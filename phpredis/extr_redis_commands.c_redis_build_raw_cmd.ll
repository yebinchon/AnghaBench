; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_build_raw_cmd.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_commands.c_redis_build_raw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"When sending a 'raw' command, the first argument must be a string!\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Raw command arguments must be scalar values!\00", align 1
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_build_raw_cmd(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Z_TYPE(i32 %15)
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @E_WARNING, align 4
  %20 = call i32 @php_error_docref(i32* null, i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FAILURE, align 4
  store i32 %21, i32* %5, align 4
  br label %94

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Z_STRVAL(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Z_STRLEN(i32 %31)
  %33 = call i32 @redis_cmd_init_sstr(%struct.TYPE_6__* %10, i32 %24, i32 %28, i32 %32)
  store i32 1, i32* %11, align 4
  br label %34

34:                                               ; preds = %83, %22
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @Z_TYPE(i32 %43)
  switch i32 %44, label %75 [
    i32 128, label %45
    i32 129, label %59
    i32 130, label %67
  ]

45:                                               ; preds = %38
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @Z_STRVAL(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Z_STRLEN(i32 %56)
  %58 = call i32 @redis_cmd_append_sstr(%struct.TYPE_6__* %10, i32 %51, i32 %57)
  br label %82

59:                                               ; preds = %38
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Z_LVAL(i32 %64)
  %66 = call i32 @redis_cmd_append_sstr_long(%struct.TYPE_6__* %10, i32 %65)
  br label %82

67:                                               ; preds = %38
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Z_DVAL(i32 %72)
  %74 = call i32 @redis_cmd_append_sstr_dbl(%struct.TYPE_6__* %10, i32 %73)
  br label %82

75:                                               ; preds = %38
  %76 = load i32, i32* @E_WARNING, align 4
  %77 = call i32 @php_error_docref(i32* null, i32 %76, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @efree(i8* %79)
  %81 = load i32, i32* @FAILURE, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %67, %59, %45
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %34

86:                                               ; preds = %34
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %8, align 8
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @SUCCESS, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %86, %75, %18
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @Z_TYPE(i32) #2

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #2

declare dso_local i32 @redis_cmd_init_sstr(%struct.TYPE_6__*, i32, i32, i32) #2

declare dso_local i32 @Z_STRVAL(i32) #2

declare dso_local i32 @Z_STRLEN(i32) #2

declare dso_local i32 @redis_cmd_append_sstr(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @redis_cmd_append_sstr_long(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Z_LVAL(i32) #2

declare dso_local i32 @redis_cmd_append_sstr_dbl(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Z_DVAL(i32) #2

declare dso_local i32 @efree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
