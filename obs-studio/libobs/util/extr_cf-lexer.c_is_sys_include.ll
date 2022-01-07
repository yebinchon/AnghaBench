; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_is_sys_include.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_is_sys_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strref = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strref*)* @is_sys_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_sys_include(%struct.strref* %0) #0 {
  %2 = alloca %struct.strref*, align 8
  store %struct.strref* %0, %struct.strref** %2, align 8
  %3 = load %struct.strref*, %struct.strref** %2, align 8
  %4 = getelementptr inbounds %struct.strref, %struct.strref* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load %struct.strref*, %struct.strref** %2, align 8
  %9 = getelementptr inbounds %struct.strref, %struct.strref* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %15, label %28

15:                                               ; preds = %7
  %16 = load %struct.strref*, %struct.strref** %2, align 8
  %17 = getelementptr inbounds %struct.strref, %struct.strref* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.strref*, %struct.strref** %2, align 8
  %20 = getelementptr inbounds %struct.strref, %struct.strref* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 62
  br label %28

28:                                               ; preds = %15, %7, %1
  %29 = phi i1 [ false, %7 ], [ false, %1 ], [ %27, %15 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
