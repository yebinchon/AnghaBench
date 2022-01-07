; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_intN.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_intN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"int16 Out is out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i32)* @r_asm_pseudo_intN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_asm_pseudo_intN(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @r_num_math(i32* null, i8* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 8
  %23 = ashr i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %75

27:                                               ; preds = %19, %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i64 @r_strbuf_get(i32* %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %75

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %10, align 2
  %41 = load i32*, i32** %14, align 8
  %42 = load i16, i16* %10, align 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @r_write_ble16(i32* %41, i16 signext %42, i32 %45)
  br label %73

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @r_write_ble32(i32* %52, i32 %53, i32 %56)
  br label %72

58:                                               ; preds = %47
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @r_write_ble64(i32* %64, i64 %65, i32 %68)
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %75

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %70, %34, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @r_num_math(i32*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @r_strbuf_get(i32*) #1

declare dso_local i32 @r_write_ble16(i32*, i16 signext, i32) #1

declare dso_local i32 @r_write_ble32(i32*, i32, i32) #1

declare dso_local i32 @r_write_ble64(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
