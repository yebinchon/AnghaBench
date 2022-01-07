; ModuleID = '/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_upload_fname.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_upload_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.mg_str = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"SL:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8* } (%struct.mg_connection*, i32, i8*)* @upload_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8* } @upload_fname(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_str, align 8
  %5 = alloca %struct.mg_str, align 8
  %6 = alloca %struct.mg_connection*, align 8
  %7 = bitcast %struct.mg_str* %5 to { i32, i8* }*
  %8 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %7, i32 0, i32 0
  store i32 %1, i32* %8, align 8
  %9 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %7, i32 0, i32 1
  store i8* %2, i8** %9, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  %10 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 3
  %13 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @malloc(i32 %15)
  %17 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @memcpy(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %4, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(i8* %23, i8* %25, i32 %27)
  %29 = bitcast %struct.mg_str* %4 to { i32, i8* }*
  %30 = load { i32, i8* }, { i32, i8* }* %29, align 8
  ret { i32, i8* } %30
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
