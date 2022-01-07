; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utillexer.h_strref_add.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utillexer.h_strref_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strref*, %struct.strref*)* @strref_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strref_add(%struct.strref* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.strref*, align 8
  %4 = alloca %struct.strref*, align 8
  store %struct.strref* %0, %struct.strref** %3, align 8
  store %struct.strref* %1, %struct.strref** %4, align 8
  %5 = load %struct.strref*, %struct.strref** %3, align 8
  %6 = getelementptr inbounds %struct.strref, %struct.strref* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.strref*, %struct.strref** %3, align 8
  %11 = load %struct.strref*, %struct.strref** %4, align 8
  %12 = call i32 @strref_copy(%struct.strref* %10, %struct.strref* %11)
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.strref*, %struct.strref** %4, align 8
  %15 = getelementptr inbounds %struct.strref, %struct.strref* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.strref*, %struct.strref** %3, align 8
  %18 = getelementptr inbounds %struct.strref, %struct.strref* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %13, %9
  ret void
}

declare dso_local i32 @strref_copy(%struct.strref*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
