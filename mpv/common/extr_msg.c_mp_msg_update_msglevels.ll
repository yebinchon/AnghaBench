; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_update_msglevels.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_update_msglevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, i32*, i32*)*, i32 (i32*)* }
%struct.mpv_global = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mp_log_root* }
%struct.mp_log_root = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.MPOpts = type { i32, i32, i32, i64, i32, i64, i32, i32, i32 }

@mp_msg_lock = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@m_option_type_msglevels = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stats\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_msg_update_msglevels(%struct.mpv_global* %0, %struct.MPOpts* %1) #0 {
  %3 = alloca %struct.mpv_global*, align 8
  %4 = alloca %struct.MPOpts*, align 8
  %5 = alloca %struct.mp_log_root*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %3, align 8
  store %struct.MPOpts* %1, %struct.MPOpts** %4, align 8
  %6 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %7 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.mp_log_root*, %struct.mp_log_root** %9, align 8
  store %struct.mp_log_root* %10, %struct.mp_log_root** %5, align 8
  %11 = call i32 @pthread_mutex_lock(i32* @mp_msg_lock)
  %12 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %13 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %16 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %18 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %21 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %23 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %26 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %28 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %31 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %30, i32 0, i32 7
  store i64 %29, i64* %31, align 8
  %32 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %33 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %36 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %38 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %2
  %42 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %43 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @STDOUT_FILENO, align 4
  %48 = call i64 @isatty(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %54 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %2
  %56 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_option_type_msglevels, i32 0, i32 1), align 8
  %57 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %58 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %57, i32 0, i32 6
  %59 = call i32 %56(i32* %58)
  %60 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_option_type_msglevels, i32 0, i32 0), align 8
  %61 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %62 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %61, i32 0, i32 6
  %63 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %64 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %63, i32 0, i32 2
  %65 = call i32 %60(i32* null, i32* %62, i32* %64)
  %66 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %67 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %66, i32 0, i32 5
  %68 = call i32 @atomic_fetch_add(i32* %67, i32 1)
  %69 = call i32 @pthread_mutex_unlock(i32* @mp_msg_lock)
  %70 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %71 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %74 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %73, i32 0, i32 4
  %75 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %76 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %75, i32 0, i32 3
  %77 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %78 = call i32 @reopen_file(i32 %72, i32* %74, i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.mpv_global* %77)
  %79 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %80 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %83 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %82, i32 0, i32 2
  %84 = load %struct.mp_log_root*, %struct.mp_log_root** %5, align 8
  %85 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %84, i32 0, i32 1
  %86 = load %struct.mpv_global*, %struct.mpv_global** %3, align 8
  %87 = call i32 @reopen_file(i32 %81, i32* %83, i32* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.mpv_global* %86)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @reopen_file(i32, i32*, i32*, i8*, %struct.mpv_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
