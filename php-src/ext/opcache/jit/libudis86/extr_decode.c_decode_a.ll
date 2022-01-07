; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_a.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32 }
%struct.ud_operand = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@UD_OP_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, %struct.ud_operand*)* @decode_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_a(%struct.ud* %0, %struct.ud_operand* %1) #0 {
  %3 = alloca %struct.ud*, align 8
  %4 = alloca %struct.ud_operand*, align 8
  store %struct.ud* %0, %struct.ud** %3, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %4, align 8
  %5 = load %struct.ud*, %struct.ud** %3, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i8*, i8** @UD_OP_PTR, align 8
  %11 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %12 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %14 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %13, i32 0, i32 0
  store i32 32, i32* %14, align 8
  %15 = load %struct.ud*, %struct.ud** %3, align 8
  %16 = call i8* @inp_uint16(%struct.ud* %15)
  %17 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %18 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i8* %16, i8** %20, align 8
  %21 = load %struct.ud*, %struct.ud** %3, align 8
  %22 = call i8* @inp_uint16(%struct.ud* %21)
  %23 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %24 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  br label %45

27:                                               ; preds = %2
  %28 = load i8*, i8** @UD_OP_PTR, align 8
  %29 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %30 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %32 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %31, i32 0, i32 0
  store i32 48, i32* %32, align 8
  %33 = load %struct.ud*, %struct.ud** %3, align 8
  %34 = call i8* @inp_uint32(%struct.ud* %33)
  %35 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %36 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load %struct.ud*, %struct.ud** %3, align 8
  %40 = call i8* @inp_uint16(%struct.ud* %39)
  %41 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %42 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %27, %9
  ret void
}

declare dso_local i8* @inp_uint16(%struct.ud*) #1

declare dso_local i8* @inp_uint32(%struct.ud*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
