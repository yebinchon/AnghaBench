; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilapple..dstr.h_dstr_end.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....utilapple..dstr.h_dstr_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.dstr*)* @dstr_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @dstr_end(%struct.dstr* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.dstr*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  %4 = load %struct.dstr*, %struct.dstr** %3, align 8
  %5 = call i64 @dstr_is_empty(%struct.dstr* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 0, i8* %2, align 1
  br label %19

8:                                                ; preds = %1
  %9 = load %struct.dstr*, %struct.dstr** %3, align 8
  %10 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.dstr*, %struct.dstr** %3, align 8
  %13 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %11, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %2, align 1
  br label %19

19:                                               ; preds = %8, %7
  %20 = load i8, i8* %2, align 1
  ret i8 %20
}

declare dso_local i64 @dstr_is_empty(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
