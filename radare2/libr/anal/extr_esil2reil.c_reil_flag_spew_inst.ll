; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_flag_spew_inst.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil2reil.c_reil_flag_spew_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reil_flag_spew_inst(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %50 [
    i32 122, label %10
    i32 98, label %18
    i32 99, label %25
    i32 111, label %32
    i32 112, label %35
    i32 114, label %38
    i32 115, label %47
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @r_anal_esil_push(%struct.TYPE_14__* %11, i32 %16)
  br label %51

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @r_num_get(i32* null, i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @reil_generate_borrow_flag(%struct.TYPE_14__* %22, i32 %23)
  br label %51

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i32 @r_num_get(i32* null, i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @reil_generate_carry_flag(%struct.TYPE_14__* %29, i32 %30)
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @reil_generate_overflow_flag(%struct.TYPE_14__* %33)
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = call i32 @reil_generate_partity_flag(%struct.TYPE_14__* %36)
  br label %51

38:                                               ; preds = %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 8
  %46 = call i32 @r_anal_esil_pushnum(%struct.TYPE_14__* %39, i32 %45)
  br label %51

47:                                               ; preds = %2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i32 @reil_generate_signature(%struct.TYPE_14__* %48)
  br label %51

50:                                               ; preds = %2
  br label %52

51:                                               ; preds = %47, %38, %35, %32, %25, %18, %10
  br label %52

52:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @r_anal_esil_push(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @r_num_get(i32*, i8*) #1

declare dso_local i32 @reil_generate_borrow_flag(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @reil_generate_carry_flag(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @reil_generate_overflow_flag(%struct.TYPE_14__*) #1

declare dso_local i32 @reil_generate_partity_flag(%struct.TYPE_14__*) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @reil_generate_signature(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
