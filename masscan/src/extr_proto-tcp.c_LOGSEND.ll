; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_LOGSEND.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_LOGSEND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Control_Block = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"=%s : --->> %s                  \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TCP_Control_Block*, i8*)* @LOGSEND to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LOGSEND(%struct.TCP_Control_Block* %0, i8* %1) #0 {
  %3 = alloca %struct.TCP_Control_Block*, align 8
  %4 = alloca i8*, align 8
  store %struct.TCP_Control_Block* %0, %struct.TCP_Control_Block** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %3, align 8
  %6 = icmp eq %struct.TCP_Control_Block* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %21

8:                                                ; preds = %2
  %9 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %3, align 8
  %10 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %3, align 8
  %13 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %3, align 8
  %16 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @state_to_string(i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @LOGip(i32 5, i32 %11, i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @LOGip(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @state_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
