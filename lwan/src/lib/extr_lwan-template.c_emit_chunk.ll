; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_emit_chunk.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_emit_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32 }
%struct.chunk = type { i32, i32, i8* }

@.str = private unnamed_addr constant [30 x i8] c"Could not emit template chunk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser*, i32, i32, i8*)* @emit_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_chunk(%struct.parser* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.chunk*, align 8
  store %struct.parser* %0, %struct.parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.parser*, %struct.parser** %5, align 8
  %11 = getelementptr inbounds %struct.parser, %struct.parser* %10, i32 0, i32 0
  %12 = call %struct.chunk* @chunk_array_append(i32* %11)
  store %struct.chunk* %12, %struct.chunk** %9, align 8
  %13 = load %struct.chunk*, %struct.chunk** %9, align 8
  %14 = icmp ne %struct.chunk* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 @lwan_status_critical_perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.chunk*, %struct.chunk** %9, align 8
  %20 = getelementptr inbounds %struct.chunk, %struct.chunk* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.chunk*, %struct.chunk** %9, align 8
  %23 = getelementptr inbounds %struct.chunk, %struct.chunk* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.chunk*, %struct.chunk** %9, align 8
  %26 = getelementptr inbounds %struct.chunk, %struct.chunk* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  ret void
}

declare dso_local %struct.chunk* @chunk_array_append(i32*) #1

declare dso_local i32 @lwan_status_critical_perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
