; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_array.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_set_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_value_s = type { %struct.key_value_s*, %struct.key_value_s*, i8* }

@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"fpm_conf_set_array: strdup(key) failed\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Can't use '$pool' when the pool is not defined\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"fpm_conf_set_array: strdup(value) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8**, i32)* @fpm_conf_set_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_conf_set_array(i32* %0, i32* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.key_value_s*, align 8
  %11 = alloca %struct.key_value_s***, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8**, i8*** %8, align 8
  %16 = bitcast i8** %15 to %struct.key_value_s***
  store %struct.key_value_s*** %16, %struct.key_value_s**** %11, align 8
  %17 = bitcast i32* %12 to i8*
  store i8* %17, i8** %13, align 8
  %18 = call %struct.key_value_s* @malloc(i32 24)
  store %struct.key_value_s* %18, %struct.key_value_s** %10, align 8
  %19 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %20 = icmp ne %struct.key_value_s* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %101

22:                                               ; preds = %4
  %23 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %24 = call i32 @memset(%struct.key_value_s* %23, i32 0, i32 24)
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @Z_STRVAL_P(i32* %25)
  %27 = call i8* @strdup(i8* %26)
  %28 = bitcast i8* %27 to %struct.key_value_s*
  %29 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %30 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %29, i32 0, i32 1
  store %struct.key_value_s* %28, %struct.key_value_s** %30, align 8
  %31 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %32 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %31, i32 0, i32 1
  %33 = load %struct.key_value_s*, %struct.key_value_s** %32, align 8
  %34 = icmp ne %struct.key_value_s* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %37 = call i32 @free(%struct.key_value_s* %36)
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %101

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @fpm_conf_set_boolean(i32* %42, i8** %13, i32 0)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %48 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %47, i32 0, i32 1
  %49 = load %struct.key_value_s*, %struct.key_value_s** %48, align 8
  %50 = call i32 @free(%struct.key_value_s* %49)
  %51 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %52 = call i32 @free(%struct.key_value_s* %51)
  %53 = load i8*, i8** %14, align 8
  store i8* %53, i8** %5, align 8
  br label %101

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i8* @strdup(i8* %58)
  %60 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %61 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %80

62:                                               ; preds = %38
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @Z_STRVAL_P(i32* %63)
  %65 = call i8* @strdup(i8* %64)
  %66 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %67 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %69 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %68, i32 0, i32 2
  %70 = call i32 @fpm_conf_expand_pool_name(i8** %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %74 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %73, i32 0, i32 1
  %75 = load %struct.key_value_s*, %struct.key_value_s** %74, align 8
  %76 = call i32 @free(%struct.key_value_s* %75)
  %77 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %78 = call i32 @free(%struct.key_value_s* %77)
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %101

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %82 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %87 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %86, i32 0, i32 1
  %88 = load %struct.key_value_s*, %struct.key_value_s** %87, align 8
  %89 = call i32 @free(%struct.key_value_s* %88)
  %90 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %91 = call i32 @free(%struct.key_value_s* %90)
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %101

92:                                               ; preds = %80
  %93 = load %struct.key_value_s***, %struct.key_value_s**** %11, align 8
  %94 = load %struct.key_value_s**, %struct.key_value_s*** %93, align 8
  %95 = load %struct.key_value_s*, %struct.key_value_s** %94, align 8
  %96 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %97 = getelementptr inbounds %struct.key_value_s, %struct.key_value_s* %96, i32 0, i32 0
  store %struct.key_value_s* %95, %struct.key_value_s** %97, align 8
  %98 = load %struct.key_value_s*, %struct.key_value_s** %10, align 8
  %99 = load %struct.key_value_s***, %struct.key_value_s**** %11, align 8
  %100 = load %struct.key_value_s**, %struct.key_value_s*** %99, align 8
  store %struct.key_value_s* %98, %struct.key_value_s** %100, align 8
  store i8* null, i8** %5, align 8
  br label %101

101:                                              ; preds = %92, %85, %72, %46, %35, %21
  %102 = load i8*, i8** %5, align 8
  ret i8* %102
}

declare dso_local %struct.key_value_s* @malloc(i32) #1

declare dso_local i32 @memset(%struct.key_value_s*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @free(%struct.key_value_s*) #1

declare dso_local i8* @fpm_conf_set_boolean(i32*, i8**, i32) #1

declare dso_local i32 @fpm_conf_expand_pool_name(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
