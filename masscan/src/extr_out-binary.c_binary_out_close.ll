; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_close.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-binary.c_binary_out_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"masscan/1.1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*)* @binary_out_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binary_out_close(%struct.Output* %0, i32* %1) #0 {
  %3 = alloca %struct.Output*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [99 x i8], align 16
  %6 = alloca i64, align 8
  store %struct.Output* %0, %struct.Output** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.Output*, %struct.Output** %3, align 8
  %8 = call i32 @UNUSEDPARM(%struct.Output* %7)
  %9 = getelementptr inbounds [99 x i8], [99 x i8]* %5, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 99)
  %11 = getelementptr inbounds [99 x i8], [99 x i8]* %5, i64 0, i64 0
  %12 = call i32 @sprintf_s(i8* %11, i32 99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [99 x i8], [99 x i8]* %5, i64 0, i64 0
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @fwrite(i8* %13, i32 1, i32 99, i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 99
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.Output*, %struct.Output** %3, align 8
  %24 = getelementptr inbounds %struct.Output, %struct.Output* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, %22
  store i64 %27, i64* %25, align 8
  ret void
}

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf_s(i8*, i32, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

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
