; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_scanto.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_scanto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.mg_str*)* @scanto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scanto(i8* %0, %struct.mg_str* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mg_str*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mg_str* %1, %struct.mg_str** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @getu16(i8* %5)
  %7 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %8 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 2
  %11 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %12 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  ret i8* %20
}

declare dso_local i32 @getu16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
