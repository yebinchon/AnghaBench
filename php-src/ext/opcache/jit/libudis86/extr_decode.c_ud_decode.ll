; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_ud_decode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_ud_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ud = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_3__ = type { i64 }

@ud_lookup_table_list = common dso_local global i32* null, align 8
@ud_itab = common dso_local global %struct.TYPE_4__* null, align 8
@UD_OP_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ud_decode(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  store %struct.ud* %0, %struct.ud** %2, align 8
  %3 = load %struct.ud*, %struct.ud** %2, align 8
  %4 = call i32 @inp_start(%struct.ud* %3)
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = call i32 @clear_insn(%struct.ud* %5)
  %7 = load i32*, i32** @ud_lookup_table_list, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load %struct.ud*, %struct.ud** %2, align 8
  %10 = getelementptr inbounds %struct.ud, %struct.ud* %9, i32 0, i32 9
  store i32* %8, i32** %10, align 8
  %11 = load %struct.ud*, %struct.ud** %2, align 8
  %12 = call i32 @decode_prefixes(%struct.ud* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.ud*, %struct.ud** %2, align 8
  %16 = call i32 @decode_opcode(%struct.ud* %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.ud*, %struct.ud** %2, align 8
  %20 = getelementptr inbounds %struct.ud, %struct.ud* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %14, %1
  %24 = phi i1 [ true, %14 ], [ true, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.ud*, %struct.ud** %2, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ud*, %struct.ud** %2, align 8
  %29 = getelementptr inbounds %struct.ud, %struct.ud* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.ud*, %struct.ud** %2, align 8
  %34 = call i32 @clear_insn(%struct.ud* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_itab, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = load %struct.ud*, %struct.ud** %2, align 8
  %38 = getelementptr inbounds %struct.ud, %struct.ud* %37, i32 0, i32 7
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.ud*, %struct.ud** %2, align 8
  %40 = getelementptr inbounds %struct.ud, %struct.ud* %39, i32 0, i32 7
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ud*, %struct.ud** %2, align 8
  %45 = getelementptr inbounds %struct.ud, %struct.ud* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %32, %23
  %47 = load %struct.ud*, %struct.ud** %2, align 8
  %48 = getelementptr inbounds %struct.ud, %struct.ud* %47, i32 0, i32 7
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @P_SEG(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %46
  %55 = load %struct.ud*, %struct.ud** %2, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 6
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UD_OP_MEM, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.ud*, %struct.ud** %2, align 8
  %65 = getelementptr inbounds %struct.ud, %struct.ud* %64, i32 0, i32 6
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UD_OP_MEM, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.ud*, %struct.ud** %2, align 8
  %74 = getelementptr inbounds %struct.ud, %struct.ud* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %63, %54, %46
  %76 = load %struct.ud*, %struct.ud** %2, align 8
  %77 = getelementptr inbounds %struct.ud, %struct.ud* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ud*, %struct.ud** %2, align 8
  %80 = getelementptr inbounds %struct.ud, %struct.ud* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ud*, %struct.ud** %2, align 8
  %82 = getelementptr inbounds %struct.ud, %struct.ud* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.ud*, %struct.ud** %2, align 8
  %84 = getelementptr inbounds %struct.ud, %struct.ud* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ud*, %struct.ud** %2, align 8
  %87 = getelementptr inbounds %struct.ud, %struct.ud* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.ud*, %struct.ud** %2, align 8
  %91 = getelementptr inbounds %struct.ud, %struct.ud* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  ret i32 %92
}

declare dso_local i32 @inp_start(%struct.ud*) #1

declare dso_local i32 @clear_insn(%struct.ud*) #1

declare dso_local i32 @decode_prefixes(%struct.ud*) #1

declare dso_local i32 @decode_opcode(%struct.ud*) #1

declare dso_local i32 @P_SEG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
