; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_smaller_equal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_smaller_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @esil_smaller_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_smaller_equal(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i8* @r_anal_esil_pop(%struct.TYPE_9__* %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %15, i8* %16, i8** %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %86

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %23, i8* %24, i8** %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %86

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  store i32 1, i32* %5, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @r_reg_get(i32 %43, i8* %44, i32 -1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @esil_internal_sizeof_reg(%struct.TYPE_9__* %48, i8* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %74

54:                                               ; preds = %27
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i64 @r_reg_get(i32 %59, i8* %60, i32 -1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i8* @esil_internal_sizeof_reg(%struct.TYPE_9__* %64, i8* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %73

70:                                               ; preds = %54
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 64, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @signed_compare_gt(i8* %76, i8* %77, i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @r_anal_esil_pushnum(%struct.TYPE_9__* %75, i32 %84)
  br label %86

86:                                               ; preds = %74, %22, %19
  br label %87

87:                                               ; preds = %86, %14, %1
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_9__*) #1

declare dso_local i64 @r_anal_esil_get_parm(%struct.TYPE_9__*, i8*, i8**) #1

declare dso_local i64 @r_reg_get(i32, i8*, i32) #1

declare dso_local i8* @esil_internal_sizeof_reg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @signed_compare_gt(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
