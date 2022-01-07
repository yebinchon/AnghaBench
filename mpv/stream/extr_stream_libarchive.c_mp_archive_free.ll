; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_mp_archive_free.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_libarchive.c_mp_archive_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_archive = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_archive_free(%struct.mp_archive* %0) #0 {
  %2 = alloca %struct.mp_archive*, align 8
  store %struct.mp_archive* %0, %struct.mp_archive** %2, align 8
  %3 = load %struct.mp_archive*, %struct.mp_archive** %2, align 8
  %4 = call i32 @mp_archive_close(%struct.mp_archive* %3)
  %5 = load %struct.mp_archive*, %struct.mp_archive** %2, align 8
  %6 = icmp ne %struct.mp_archive* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.mp_archive*, %struct.mp_archive** %2, align 8
  %9 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.mp_archive*, %struct.mp_archive** %2, align 8
  %14 = getelementptr inbounds %struct.mp_archive, %struct.mp_archive* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @freelocale(i64 %15)
  br label %17

17:                                               ; preds = %12, %7, %1
  %18 = load %struct.mp_archive*, %struct.mp_archive** %2, align 8
  %19 = call i32 @talloc_free(%struct.mp_archive* %18)
  ret void
}

declare dso_local i32 @mp_archive_close(%struct.mp_archive*) #1

declare dso_local i32 @freelocale(i64) #1

declare dso_local i32 @talloc_free(%struct.mp_archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
