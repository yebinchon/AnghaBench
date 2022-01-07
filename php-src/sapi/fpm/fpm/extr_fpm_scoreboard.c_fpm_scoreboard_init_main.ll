; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_init_main.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_scoreboard.c_fpm_scoreboard_init_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_worker_pool_s = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.fpm_worker_pool_s* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8** }

@fpm_worker_all_pools = common dso_local global %struct.fpm_worker_pool_s* null, align 8
@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"[pool %s] Unable to create scoreboard SHM because max_client is not set\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"[pool %s] Unable to create scoreboard SHM because it already exists\00", align 1
@HZ = common dso_local global i32 0, align 4
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@_SC_CLK_TCK = common dso_local global i32 0, align 4
@fpm_scoreboard_tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_scoreboard_init_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.fpm_worker_pool_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** @fpm_worker_all_pools, align 8
  store %struct.fpm_worker_pool_s* %7, %struct.fpm_worker_pool_s** %2, align 8
  br label %8

8:                                                ; preds = %128, %0
  %9 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %10 = icmp ne %struct.fpm_worker_pool_s* %9, null
  br i1 %10, label %11, label %132

11:                                               ; preds = %8
  %12 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %13 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load i32, i32* @ZLOG_ERROR, align 4
  %20 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %21 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @zlog(i32 %19, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %1, align 4
  br label %133

26:                                               ; preds = %11
  %27 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %28 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @ZLOG_ERROR, align 4
  %33 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %34 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @zlog(i32 %32, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %1, align 4
  br label %133

39:                                               ; preds = %26
  %40 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %41 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = add i64 4, %46
  store i64 %47, i64* %4, align 8
  %48 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %49 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %55, %56
  %58 = call i8* @fpm_shm_alloc(i64 %57)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %133

62:                                               ; preds = %39
  %63 = load i8*, i8** %6, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_3__*
  %65 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %66 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %65, i32 0, i32 1
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %68 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %73 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr i8, i8* %77, i64 %76
  store i8* %78, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %97, %62
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %82 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %80, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %90 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %88, i8** %96, align 8
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %3, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %3, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr i8, i8* %100, i64 4
  store i8* %101, i8** %6, align 8
  br label %79

102:                                              ; preds = %79
  %103 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %104 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %109 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  store i32 %107, i32* %111, align 4
  %112 = call i32 @time(i32* null)
  %113 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %114 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i32 %112, i32* %116, align 8
  %117 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %118 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %123 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @strlcpy(i32 %121, i32 %126, i32 4)
  br label %128

128:                                              ; preds = %102
  %129 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %2, align 8
  %130 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %129, i32 0, i32 2
  %131 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %130, align 8
  store %struct.fpm_worker_pool_s* %131, %struct.fpm_worker_pool_s** %2, align 8
  br label %8

132:                                              ; preds = %8
  store i32 0, i32* %1, align 4
  br label %133

133:                                              ; preds = %132, %61, %31, %18
  %134 = load i32, i32* %1, align 4
  ret i32 %134
}

declare dso_local i32 @zlog(i32, i8*, i32) #1

declare dso_local i8* @fpm_shm_alloc(i64) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
