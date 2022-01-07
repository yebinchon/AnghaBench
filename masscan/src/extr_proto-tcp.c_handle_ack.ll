; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_handle_ack.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp.c_handle_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Control_Block = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"%u.%u.%u.%u - %u-sending, %u-reciving\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"%u.%u.%u.%u - tcb: ackno from past: old ackno = 0x%08x, this ackno = 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"%u.%u.%u.%u - tcb: ackno from future: my seqno = 0x%08x, their ackno = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Control_Block*, i64)* @handle_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ack(%struct.TCP_Control_Block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Control_Block*, align 8
  %5 = alloca i64, align 8
  store %struct.TCP_Control_Block* %0, %struct.TCP_Control_Block** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %7 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 24
  %10 = and i32 %9, 255
  %11 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %12 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %17 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %22 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  %26 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %27 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %33 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @LOG(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15, i32 %20, i32 %25, i64 %30, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %39 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

43:                                               ; preds = %2
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %46 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = icmp sgt i64 %48, 10000
  br i1 %49, label %50, label %76

50:                                               ; preds = %43
  %51 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %52 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 24
  %55 = and i32 %54, 255
  %56 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %57 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %62 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %67 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 0
  %70 = and i32 %69, 255
  %71 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %72 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @LOG(i32 4, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60, i32 %65, i32 %70, i64 %73, i64 %74)
  store i32 0, i32* %3, align 4
  br label %113

76:                                               ; preds = %43
  %77 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %78 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %79, %80
  %82 = icmp sgt i64 %81, 10000
  br i1 %82, label %83, label %109

83:                                               ; preds = %76
  %84 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %85 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 24
  %88 = and i32 %87, 255
  %89 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %90 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %95 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %100 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = ashr i32 %101, 0
  %103 = and i32 %102, 255
  %104 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %105 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i32 @LOG(i32 4, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %93, i32 %98, i32 %103, i64 %106, i64 %107)
  store i32 0, i32* %3, align 4
  br label %113

109:                                              ; preds = %76
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.TCP_Control_Block*, %struct.TCP_Control_Block** %4, align 8
  %112 = getelementptr inbounds %struct.TCP_Control_Block, %struct.TCP_Control_Block* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  store i32 1, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %83, %50, %42
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @LOG(i32, i8*, i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
