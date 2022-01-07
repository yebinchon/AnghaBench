; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_FILE_DEF.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_FILE_DEF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32, i8*, i32)* @FILE_DEF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FILE_DEF(%struct.file* noalias sret %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
