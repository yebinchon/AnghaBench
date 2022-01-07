; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_msg.c_mp_msg_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.mpv_global = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mp_log_root* }
%struct.mp_log_root = type { i32, %struct.mp_log_root*, i64, %struct.mp_log_root*, i64 }

@m_option_type_msglevels = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_msg_uninit(%struct.mpv_global* %0) #0 {
  %2 = alloca %struct.mpv_global*, align 8
  %3 = alloca %struct.mp_log_root*, align 8
  store %struct.mpv_global* %0, %struct.mpv_global** %2, align 8
  %4 = load %struct.mpv_global*, %struct.mpv_global** %2, align 8
  %5 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.mp_log_root*, %struct.mp_log_root** %7, align 8
  store %struct.mp_log_root* %8, %struct.mp_log_root** %3, align 8
  %9 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %10 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %15 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @fclose(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %20 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %19, i32 0, i32 3
  %21 = load %struct.mp_log_root*, %struct.mp_log_root** %20, align 8
  %22 = call i32 @talloc_free(%struct.mp_log_root* %21)
  %23 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %24 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %29 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @fclose(i64 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %34 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %33, i32 0, i32 1
  %35 = load %struct.mp_log_root*, %struct.mp_log_root** %34, align 8
  %36 = call i32 @talloc_free(%struct.mp_log_root* %35)
  %37 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_option_type_msglevels, i32 0, i32 0), align 8
  %38 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %39 = getelementptr inbounds %struct.mp_log_root, %struct.mp_log_root* %38, i32 0, i32 0
  %40 = call i32 %37(i32* %39)
  %41 = load %struct.mp_log_root*, %struct.mp_log_root** %3, align 8
  %42 = call i32 @talloc_free(%struct.mp_log_root* %41)
  %43 = load %struct.mpv_global*, %struct.mpv_global** %2, align 8
  %44 = getelementptr inbounds %struct.mpv_global, %struct.mpv_global* %43, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %44, align 8
  ret void
}

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @talloc_free(%struct.mp_log_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
