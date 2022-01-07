; ModuleID = '/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_arl_callback_status_uid.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/apps.plugin/extr_apps_plugin.c_arl_callback_status_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arl_callback_ptr = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arl_callback_status_uid(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.arl_callback_ptr*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.arl_callback_ptr*
  store %struct.arl_callback_ptr* %15, %struct.arl_callback_ptr** %9, align 8
  %16 = load %struct.arl_callback_ptr*, %struct.arl_callback_ptr** %9, align 8
  %17 = getelementptr inbounds %struct.arl_callback_ptr, %struct.arl_callback_ptr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.arl_callback_ptr*, %struct.arl_callback_ptr** %9, align 8
  %20 = getelementptr inbounds %struct.arl_callback_ptr, %struct.arl_callback_ptr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @procfile_linewords(i32 %18, i32 %21)
  %23 = icmp slt i32 %22, 5
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %55

28:                                               ; preds = %4
  %29 = load %struct.arl_callback_ptr*, %struct.arl_callback_ptr** %9, align 8
  %30 = getelementptr inbounds %struct.arl_callback_ptr, %struct.arl_callback_ptr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.arl_callback_ptr*, %struct.arl_callback_ptr** %9, align 8
  %33 = getelementptr inbounds %struct.arl_callback_ptr, %struct.arl_callback_ptr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @procfile_lineword(i32 %31, i32 %34, i32 2)
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %28
  %44 = phi i1 [ false, %28 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @str2l(i8* %49)
  %51 = load %struct.arl_callback_ptr*, %struct.arl_callback_ptr** %9, align 8
  %52 = getelementptr inbounds %struct.arl_callback_ptr, %struct.arl_callback_ptr* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %27, %48, %43
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @procfile_linewords(i32, i32) #1

declare dso_local i8* @procfile_lineword(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @str2l(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
