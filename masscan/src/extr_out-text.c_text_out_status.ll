; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-text.c_text_out_status.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-text.c_text_out_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s %s %u %u.%u.%u.%u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*, i64, i32, i32, i32, i32, i32, i32)* @text_out_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_out_status(%struct.Output* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.Output*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @UNUSEDPARM(i32 %19)
  %21 = load i32, i32* %17, align 4
  %22 = call i32 @UNUSEDPARM(i32 %21)
  %23 = load %struct.Output*, %struct.Output** %10, align 8
  %24 = ptrtoint %struct.Output* %23 to i32
  %25 = call i32 @UNUSEDPARM(i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i8* @status_string(i32 %27)
  %29 = load i32, i32* %15, align 4
  %30 = call i8* @name_from_ip_proto(i32 %29)
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %14, align 4
  %33 = lshr i32 %32, 24
  %34 = and i32 %33, 255
  %35 = load i32, i32* %14, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load i32, i32* %14, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load i32, i32* %14, align 4
  %42 = lshr i32 %41, 0
  %43 = and i32 %42, 255
  %44 = load i64, i64* %12, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 %45)
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @status_string(i32) #1

declare dso_local i8* @name_from_ip_proto(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
