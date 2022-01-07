; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_cursor-capture.c_cursor_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cursor_data = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@CURSOR_SHOWING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_capture(%struct.cursor_data* %0) #0 {
  %2 = alloca %struct.cursor_data*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store %struct.cursor_data* %0, %struct.cursor_data** %2, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 32, i32* %6, align 8
  %7 = call i32 @GetCursorInfo(%struct.TYPE_3__* %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %11 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %14 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %16 = call i32 @memcpy(i32* %14, i32* %15, i32 4)
  %17 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %18 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %48

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @CopyIcon(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cursor_capture_icon(%struct.cursor_data* %28, i32 %29)
  %31 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %32 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %36 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CURSOR_SHOWING, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load %struct.cursor_data*, %struct.cursor_data** %2, align 8
  %44 = getelementptr inbounds %struct.cursor_data, %struct.cursor_data* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %24
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @DestroyIcon(i32 %46)
  br label %48

48:                                               ; preds = %45, %23, %9
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetCursorInfo(%struct.TYPE_3__*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @CopyIcon(i64) #2

declare dso_local i32 @cursor_capture_icon(%struct.cursor_data*, i32) #2

declare dso_local i32 @DestroyIcon(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
