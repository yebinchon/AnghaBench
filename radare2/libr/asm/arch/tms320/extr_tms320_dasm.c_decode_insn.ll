; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_insn.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/extr_tms320_dasm.c_decode_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"|| %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @decode_insn(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %3 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %14 = load i32, i32* @E, align 4
  %15 = call i64 @field_valid(%struct.TYPE_20__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = load i32, i32* @E, align 4
  %20 = call i64 @field_value(%struct.TYPE_20__* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i32 %12, i32 4, i8* %25, i32 %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %33 = call i32 @decode_bits(%struct.TYPE_20__* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %35 = call i32 @decode_braces(%struct.TYPE_20__* %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %37 = call i32 @decode_qualifiers(%struct.TYPE_20__* %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %39 = call i32 @decode_constants(%struct.TYPE_20__* %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %41 = call i32 @decode_addresses(%struct.TYPE_20__* %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = call i32 @decode_swap(%struct.TYPE_20__* %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %45 = call i32 @decode_relop(%struct.TYPE_20__* %44)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %47 = call i32 @decode_cond(%struct.TYPE_20__* %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = call i32 @decode_registers(%struct.TYPE_20__* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = call i32 @decode_addressing_modes(%struct.TYPE_20__* %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %53 = call i32* @finalize(%struct.TYPE_20__* %52)
  ret i32* %53
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @field_valid(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @field_value(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @decode_bits(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_braces(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_qualifiers(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_constants(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_addresses(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_swap(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_relop(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_cond(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_registers(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_addressing_modes(%struct.TYPE_20__*) #1

declare dso_local i32* @finalize(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
