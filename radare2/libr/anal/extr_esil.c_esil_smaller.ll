; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_smaller.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_esil.c_esil_smaller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @esil_smaller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_smaller(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
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
  br i1 %13, label %14, label %89

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %15, i8* %16, i64* %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %88

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @r_anal_esil_get_parm(%struct.TYPE_9__* %23, i8* %24, i64* %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %88

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  store i32 1, i32* %5, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @r_reg_get(i32 %40, i8* %41, i32 -1)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %27
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @esil_internal_sizeof_reg(%struct.TYPE_9__* %45, i8* %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %71

51:                                               ; preds = %27
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @r_reg_get(i32 %56, i8* %57, i32 -1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @esil_internal_sizeof_reg(%struct.TYPE_9__* %61, i8* %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %70

67:                                               ; preds = %51
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 64, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %44
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @signed_compare_gt(i64 %77, i64 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = and i32 %76, %85
  %87 = call i32 @r_anal_esil_pushnum(%struct.TYPE_9__* %72, i32 %86)
  br label %88

88:                                               ; preds = %71, %22, %19
  br label %89

89:                                               ; preds = %88, %14, %1
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i8* @r_anal_esil_pop(%struct.TYPE_9__*) #1

declare dso_local i64 @r_anal_esil_get_parm(%struct.TYPE_9__*, i8*, i64*) #1

declare dso_local i64 @r_reg_get(i32, i8*, i32) #1

declare dso_local i8* @esil_internal_sizeof_reg(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @r_anal_esil_pushnum(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @signed_compare_gt(i64, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
