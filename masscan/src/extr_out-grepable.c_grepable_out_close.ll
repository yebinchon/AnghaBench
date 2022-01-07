; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_close.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_out-grepable.c_grepable_out_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"# Masscan done at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Output*, i32*)* @grepable_out_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grepable_out_close(%struct.Output* %0, i32* %1) #0 {
  %3 = alloca %struct.Output*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.tm, align 4
  store %struct.Output* %0, %struct.Output** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32 @time(i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.Output*, %struct.Output** %3, align 8
  %10 = call i32 @UNUSEDPARM(%struct.Output* %9)
  %11 = call i32 @gmtime_s(%struct.tm* %7, i32* %5)
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %13 = call i32 @strftime(i8* %12, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %7)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i32 @fprintf(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  ret void
}

declare dso_local i32 @time(i32) #1

declare dso_local i32 @UNUSEDPARM(%struct.Output*) #1

declare dso_local i32 @gmtime_s(%struct.tm*, i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
