; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_get_src_regname.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_anal_tp.c_get_src_regname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@R_ANAL_OP_MASK_VAL = common dso_local global i32 0, align 4
@R_ANAL_OP_MASK_ESIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i8*, i32)* @get_src_regname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_src_regname(%struct.TYPE_11__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @R_ANAL_OP_MASK_VAL, align 4
  %21 = load i32, i32* @R_ANAL_OP_MASK_ESIL, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.TYPE_12__* @r_core_anal_op(%struct.TYPE_11__* %18, i32 %19, i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %84

27:                                               ; preds = %4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = call i8* @r_strbuf_get(i32* %29)
  %31 = call i8* @strdup(i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 44)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i8*, i8** %12, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memset(i8* %39, i32 0, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call %struct.TYPE_10__* @r_reg_get(i32 %44, i8* %45, i32 -1)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %13, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %79

49:                                               ; preds = %38
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = call i8* @r_reg_32_to_64(i32 %62, i8* %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @strdup(i8* %70)
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %54, %49
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @strncpy(i8* %74, i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %73, %38
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = call i32 @r_anal_op_free(%struct.TYPE_12__* %82)
  br label %84

84:                                               ; preds = %79, %26
  ret void
}

declare dso_local %struct.TYPE_12__* @r_core_anal_op(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_strbuf_get(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @r_reg_get(i32, i8*, i32) #1

declare dso_local i8* @r_reg_32_to_64(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @r_anal_op_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
