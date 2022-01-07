; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_evaluate_full_path.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_evaluate_full_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.fpm_worker_pool_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@fpm_globals = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PHP_PREFIX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"$prefix\00", align 1
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"'$prefix' must be use at the beginning of the value\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.fpm_worker_pool_s*, i8*, i32)* @fpm_evaluate_full_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_evaluate_full_path(i8** %0, %struct.fpm_worker_pool_s* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.fpm_worker_pool_s*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.fpm_worker_pool_s* %1, %struct.fpm_worker_pool_s** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %15, %4
  store i32 0, i32* %5, align 4
  br label %140

26:                                               ; preds = %19
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %28 = icmp ne %struct.fpm_worker_pool_s* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %31 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %36 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %34, %29, %26
  %41 = load i8*, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_globals, i32 0, i32 0), align 8
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  br label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** @PHP_PREFIX, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ]
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %55, %45
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %57
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strstr(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %98

66:                                               ; preds = %60
  %67 = load i8*, i8** %12, align 8
  %68 = load i8**, i8*** %6, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ZLOG_ERROR, align 4
  %73 = call i32 @zlog(i32 %72, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %140

74:                                               ; preds = %66
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i8**, i8*** %6, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8**, i8*** %6, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = call i8* @strdup(i8* %88)
  store i8* %89, i8** %12, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8**, i8*** %6, align 8
  store i8* %90, i8** %91, align 8
  br label %97

92:                                               ; preds = %74
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8**, i8*** %6, align 8
  store i8* null, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %80
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %57
  %100 = load i8**, i8*** %6, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load i8*, i8** %10, align 8
  %105 = load i8**, i8*** %6, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @spprintf(i8** %11, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %104, i8* %106)
  %108 = load i8**, i8*** %6, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load i8*, i8** %11, align 8
  %112 = call i8* @strdup(i8* %111)
  %113 = load i8**, i8*** %6, align 8
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @efree(i8* %114)
  br label %120

116:                                              ; preds = %99
  %117 = load i8*, i8** %10, align 8
  %118 = call i8* @strdup(i8* %117)
  %119 = load i8**, i8*** %6, align 8
  store i8* %118, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %103
  %121 = load i8**, i8*** %6, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 47
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %128 = icmp ne %struct.fpm_worker_pool_s* %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %7, align 8
  %131 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %130, i32 0, i32 0
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = icmp ne %struct.TYPE_3__* %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8**, i8*** %6, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @fpm_evaluate_full_path(i8** %135, %struct.fpm_worker_pool_s* null, i8* %136, i32 %137)
  store i32 %138, i32* %5, align 4
  br label %140

139:                                              ; preds = %129, %126, %120
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %134, %71, %25
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @zlog(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i8*, i8*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
