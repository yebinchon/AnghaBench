; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_make.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_children.c_fpm_children_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fpm_worker_pool_s = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.fpm_child_s = type { i32, i32 }

@fpm_children_make.warned = internal global i32 0, align 4
@PM_STYLE_DYNAMIC = common dso_local global i64 0, align 8
@PM_STYLE_ONDEMAND = common dso_local global i64 0, align 8
@fpm_global_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@fpm_globals = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"[pool %s] child %d started\00", align 1
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [118 x i8] c"The maximum number of processes has been reached. Please review your configuration and consider raising 'process.max'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_children_make(%struct.fpm_worker_pool_s* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpm_worker_pool_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fpm_child_s*, align 8
  %12 = alloca i32, align 4
  store %struct.fpm_worker_pool_s* %0, %struct.fpm_worker_pool_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %14 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PM_STYLE_DYNAMIC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %25 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  br label %35

29:                                               ; preds = %20
  %30 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %31 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %29, %23
  br label %62

36:                                               ; preds = %4
  %37 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %38 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PM_STYLE_ONDEMAND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %54

48:                                               ; preds = %44
  %49 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %50 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %47
  br label %61

55:                                               ; preds = %36
  %56 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %57 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %126, %62
  %64 = call i64 (...) @fpm_pctl_can_spawn_children()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %68 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpm_globals, i32 0, i32 0), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ true, %72 ], [ %78, %75 ]
  br label %81

81:                                               ; preds = %79, %66, %63
  %82 = phi i1 [ false, %66 ], [ false, %63 ], [ %80, %79 ]
  br i1 %82, label %83, label %127

83:                                               ; preds = %81
  store i32 0, i32* @fpm_children_make.warned, align 4
  %84 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %85 = call %struct.fpm_child_s* @fpm_resources_prepare(%struct.fpm_worker_pool_s* %84)
  store %struct.fpm_child_s* %85, %struct.fpm_child_s** %11, align 8
  %86 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %87 = icmp ne %struct.fpm_child_s* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 2, i32* %5, align 4
  br label %148

89:                                               ; preds = %83
  %90 = call i32 (...) @fork()
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  switch i32 %91, label %102 [
    i32 0, label %92
    i32 -1, label %97
  ]

92:                                               ; preds = %89
  %93 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %94 = call i32 @fpm_child_resources_use(%struct.fpm_child_s* %93)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpm_globals, i32 0, i32 1), align 4
  %95 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %96 = call i32 @fpm_child_init(%struct.fpm_worker_pool_s* %95)
  store i32 0, i32* %5, align 4
  br label %148

97:                                               ; preds = %89
  %98 = load i32, i32* @ZLOG_SYSERROR, align 4
  %99 = call i32 (i32, i8*, ...) @zlog(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %101 = call i32 @fpm_resources_discard(%struct.fpm_child_s* %100)
  store i32 2, i32* %5, align 4
  br label %148

102:                                              ; preds = %89
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %105 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %107 = getelementptr inbounds %struct.fpm_child_s, %struct.fpm_child_s* %106, i32 0, i32 1
  %108 = call i32 @fpm_clock_get(i32* %107)
  %109 = load %struct.fpm_child_s*, %struct.fpm_child_s** %11, align 8
  %110 = call i32 @fpm_parent_resources_use(%struct.fpm_child_s* %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @ZLOG_DEBUG, align 4
  br label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @ZLOG_NOTICE, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %120 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i32, i8*, ...) @zlog(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117
  br label %63

127:                                              ; preds = %81
  %128 = load i32, i32* @fpm_children_make.warned, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %147, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fpm_globals, i32 0, i32 0), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @fpm_global_config, i32 0, i32 0), align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load %struct.fpm_worker_pool_s*, %struct.fpm_worker_pool_s** %6, align 8
  %139 = getelementptr inbounds %struct.fpm_worker_pool_s, %struct.fpm_worker_pool_s* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  store i32 1, i32* @fpm_children_make.warned, align 4
  %144 = load i32, i32* @ZLOG_WARNING, align 4
  %145 = call i32 (i32, i8*, ...) @zlog(i32 %144, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %137
  br label %147

147:                                              ; preds = %146, %133, %130, %127
  store i32 1, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %97, %92, %88
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @fpm_pctl_can_spawn_children(...) #1

declare dso_local %struct.fpm_child_s* @fpm_resources_prepare(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @fpm_child_resources_use(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_child_init(%struct.fpm_worker_pool_s*) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @fpm_resources_discard(%struct.fpm_child_s*) #1

declare dso_local i32 @fpm_clock_get(i32*) #1

declare dso_local i32 @fpm_parent_resources_use(%struct.fpm_child_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
