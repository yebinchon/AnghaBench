; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_jumponcond.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_jumponcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@VRELOCABLE = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@OP_TEST = common dso_local global i32 0, align 4
@OP_TESTSET = common dso_local global i32 0, align 4
@NO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @jumponcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumponcond(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VRELOCABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = call i32 @getcode(%struct.TYPE_17__* %15, %struct.TYPE_16__* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @GET_OPCODE(i32 %18)
  %20 = load i64, i64* @OP_NOT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = load i32, i32* @OP_TEST, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @GETARG_B(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @condjump(%struct.TYPE_17__* %27, i32 %28, i32 %30, i32 0, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %54

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call i32 @discharge2anyreg(%struct.TYPE_17__* %38, %struct.TYPE_16__* %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call i32 @freeexp(%struct.TYPE_17__* %41, %struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = load i32, i32* @OP_TESTSET, align 4
  %46 = load i32, i32* @NO_REG, align 4
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @condjump(%struct.TYPE_17__* %44, i32 %45, i32 %46, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %37, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @getcode(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i32 @condjump(%struct.TYPE_17__*, i32, i32, i32, i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @discharge2anyreg(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @freeexp(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
