; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_free_post_buffer.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-request.c_free_post_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_backed_buffer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @free_post_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_post_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.file_backed_buffer*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.file_backed_buffer*
  store %struct.file_backed_buffer* %5, %struct.file_backed_buffer** %3, align 8
  %6 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.file_backed_buffer, %struct.file_backed_buffer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.file_backed_buffer, %struct.file_backed_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @munmap(i32 %8, i32 %11)
  %13 = load %struct.file_backed_buffer*, %struct.file_backed_buffer** %3, align 8
  %14 = call i32 @free(%struct.file_backed_buffer* %13)
  ret void
}

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @free(%struct.file_backed_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
