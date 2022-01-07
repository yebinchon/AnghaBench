; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_demangler.c_init_demangler.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_demangler.c_init_demangler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@eDemanglerErrOK = common dso_local global i64 0, align 8
@microsoft_demangle = common dso_local global i32 0, align 4
@eDemanglerErrMemoryAllocation = common dso_local global i64 0, align 8
@eDemanglerErrUnsupportedMangling = common dso_local global i64 0, align 8
@eDemanglerErrUnkown = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @init_demangler(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [3 x i32], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 128, i32* %5, align 4
  %8 = load i64, i64* @eDemanglerErrOK, align 8
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* @microsoft_demangle, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @eDemanglerErrMemoryAllocation, align 8
  store i64 %16, i64* %6, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @get_mangling_type(i8* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %25 [
    i32 128, label %21
    i32 129, label %23
  ]

21:                                               ; preds = %17
  %22 = load i64, i64* @eDemanglerErrUnsupportedMangling, align 8
  store i64 %22, i64* %6, align 8
  br label %26

23:                                               ; preds = %17
  %24 = load i64, i64* @eDemanglerErrUnkown, align 8
  store i64 %24, i64* %6, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23, %21
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @eDemanglerErrOK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %42

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strdup(i8* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %31, %30, %15
  %43 = load i64, i64* %6, align 8
  ret i64 %43
}

declare dso_local i32 @get_mangling_type(i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
