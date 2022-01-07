; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c___demangleAs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c___demangleAs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@bin = common dso_local global %struct.TYPE_2__* null, align 8
@file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsupported demangler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @__demangleAs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__demangleAs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bin, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bin, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ %10, %7 ], [ 0, %11 ]
  store i32 %13, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %34 [
    i32 133, label %15
    i32 132, label %18
    i32 130, label %21
    i32 128, label %24
    i32 131, label %28
    i32 129, label %31
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @file, align 4
  %17 = call i8* @r_bin_demangle_cxx(i32* null, i32 %16, i32 0)
  store i8* %17, i8** %4, align 8
  br label %36

18:                                               ; preds = %12
  %19 = load i32, i32* @file, align 4
  %20 = call i8* @r_bin_demangle_java(i32 %19)
  store i8* %20, i8** %4, align 8
  br label %36

21:                                               ; preds = %12
  %22 = load i32, i32* @file, align 4
  %23 = call i8* @r_bin_demangle_objc(i32* null, i32 %22)
  store i8* %23, i8** %4, align 8
  br label %36

24:                                               ; preds = %12
  %25 = load i32, i32* @file, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i8* @r_bin_demangle_swift(i32 %25, i32 %26)
  store i8* %27, i8** %4, align 8
  br label %36

28:                                               ; preds = %12
  %29 = load i32, i32* @file, align 4
  %30 = call i8* @r_bin_demangle_msvc(i32 %29)
  store i8* %30, i8** %4, align 8
  br label %36

31:                                               ; preds = %12
  %32 = load i32, i32* @file, align 4
  %33 = call i8* @r_bin_demangle_rust(i32* null, i32 %32, i32 0)
  store i8* %33, i8** %4, align 8
  br label %36

34:                                               ; preds = %12
  %35 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31, %28, %24, %21, %18, %15
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i8* @r_bin_demangle_cxx(i32*, i32, i32) #1

declare dso_local i8* @r_bin_demangle_java(i32) #1

declare dso_local i8* @r_bin_demangle_objc(i32*, i32) #1

declare dso_local i8* @r_bin_demangle_swift(i32, i32) #1

declare dso_local i8* @r_bin_demangle_msvc(i32) #1

declare dso_local i8* @r_bin_demangle_rust(i32*, i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
