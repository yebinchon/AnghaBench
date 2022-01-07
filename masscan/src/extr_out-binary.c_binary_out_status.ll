; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@Out_Open2 = common dso_local global i8 0, align 1
@Out_Closed2 = common dso_local global i8 0, align 1
@Out_Arp2 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i32, i32, i32, i32, i32, i32, i32)* @binary_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binary_out_status(%struct.Output* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [256 x i8], align 16
  %20 = alloca i64, align 8
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load %struct.Output*, %struct.Output** %10, align 8
  %22 = call i32 @UNUSEDPARM(%struct.Output* %21)
  %23 = load i32, i32* %13, align 4
  switch i32 %23, label %33 [
    i32 128, label %24
    i32 129, label %27
    i32 130, label %30
  ]

24:                                               ; preds = %9
  %25 = load i8, i8* @Out_Open2, align 1
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 %25, i8* %26, align 16
  br label %34

27:                                               ; preds = %9
  %28 = load i8, i8* @Out_Closed2, align 1
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 %28, i8* %29, align 16
  br label %34

30:                                               ; preds = %9
  %31 = load i8, i8* @Out_Arp2, align 1
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 %31, i8* %32, align 16
  br label %34

33:                                               ; preds = %9
  br label %100

34:                                               ; preds = %30, %27, %24
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 1
  store i8 13, i8* %35, align 1
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %36, 24
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 2
  store i8 %38, i8* %39, align 2
  %40 = load i32, i32* %12, align 4
  %41 = ashr i32 %40, 16
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 3
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %12, align 4
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 4
  store i8 %46, i8* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = ashr i32 %48, 0
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 5
  store i8 %50, i8* %51, align 1
  %52 = load i32, i32* %14, align 4
  %53 = lshr i32 %52, 24
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 6
  store i8 %54, i8* %55, align 2
  %56 = load i32, i32* %14, align 4
  %57 = lshr i32 %56, 16
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 7
  store i8 %58, i8* %59, align 1
  %60 = load i32, i32* %14, align 4
  %61 = lshr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 8
  store i8 %62, i8* %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = lshr i32 %64, 0
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 9
  store i8 %66, i8* %67, align 1
  %68 = load i32, i32* %15, align 4
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 10
  store i8 %69, i8* %70, align 2
  %71 = load i32, i32* %16, align 4
  %72 = lshr i32 %71, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 11
  store i8 %73, i8* %74, align 1
  %75 = load i32, i32* %16, align 4
  %76 = lshr i32 %75, 0
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 12
  store i8 %77, i8* %78, align 4
  %79 = load i32, i32* %17, align 4
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 13
  store i8 %80, i8* %81, align 1
  %82 = load i32, i32* %18, align 4
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 14
  store i8 %83, i8* %84, align 2
  %85 = bitcast [256 x i8]* %19 to i8**
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @fwrite(i8** %85, i32 1, i32 15, i32* %86)
  store i64 %87, i64* %20, align 8
  %88 = load i64, i64* %20, align 8
  %89 = icmp ne i64 %88, 15
  br i1 %89, label %90, label %93

90:                                               ; preds = %34
  %91 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %34
  %94 = load i64, i64* %20, align 8
  %95 = load %struct.Output*, %struct.Output** %10, align 8
  %96 = getelementptr inbounds %struct.Output, %struct.Output* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %94
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %93, %33
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i64 @fwrite(i8**, i32, i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
