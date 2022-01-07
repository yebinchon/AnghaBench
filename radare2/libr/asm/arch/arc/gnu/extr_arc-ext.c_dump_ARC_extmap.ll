; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_dump_ARC_extmap.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arc/gnu/extr_arc-ext.c_dump_ARC_extmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, %struct.ExtCoreRegister*, %struct.ExtInstruction**, %struct.ExtAuxRegister* }
%struct.ExtCoreRegister = type { i8*, i32, i32 }
%struct.ExtInstruction = type { i32, i32, i32, i8*, %struct.ExtInstruction* }
%struct.ExtAuxRegister = type { i8*, %struct.ExtAuxRegister*, i32 }

@arc_extension_map = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"AUX : %s %ld\0A\00", align 1
@INST_HASH_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"INST: %d %d %x %s\0A\00", align 1
@NUM_EXT_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"CORE: %s %d %s\0A\00", align 1
@NUM_EXT_COND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"COND: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_ARC_extmap() #0 {
  %1 = alloca %struct.ExtAuxRegister*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ExtInstruction*, align 8
  %4 = alloca %struct.ExtCoreRegister, align 8
  %5 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 3), align 8
  store %struct.ExtAuxRegister* %5, %struct.ExtAuxRegister** %1, align 8
  br label %6

6:                                                ; preds = %9, %0
  %7 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %8 = icmp ne %struct.ExtAuxRegister* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %11 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %14 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %15)
  %17 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %1, align 8
  %18 = getelementptr inbounds %struct.ExtAuxRegister, %struct.ExtAuxRegister* %17, i32 0, i32 1
  %19 = load %struct.ExtAuxRegister*, %struct.ExtAuxRegister** %18, align 8
  store %struct.ExtAuxRegister* %19, %struct.ExtAuxRegister** %1, align 8
  br label %6

20:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @INST_HASH_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.ExtInstruction**, %struct.ExtInstruction*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 2), align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ExtInstruction*, %struct.ExtInstruction** %26, i64 %28
  %30 = load %struct.ExtInstruction*, %struct.ExtInstruction** %29, align 8
  store %struct.ExtInstruction* %30, %struct.ExtInstruction** %3, align 8
  br label %31

31:                                               ; preds = %48, %25
  %32 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %33 = icmp ne %struct.ExtInstruction* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %36 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %39 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %42 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %45 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i8* %46)
  br label %48

48:                                               ; preds = %34
  %49 = load %struct.ExtInstruction*, %struct.ExtInstruction** %3, align 8
  %50 = getelementptr inbounds %struct.ExtInstruction, %struct.ExtInstruction* %49, i32 0, i32 4
  %51 = load %struct.ExtInstruction*, %struct.ExtInstruction** %50, align 8
  store %struct.ExtInstruction* %51, %struct.ExtInstruction** %3, align 8
  br label %31

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %21

56:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @NUM_EXT_CORE, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.ExtCoreRegister*, %struct.ExtCoreRegister** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 1), align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ExtCoreRegister, %struct.ExtCoreRegister* %62, i64 %64
  %66 = bitcast %struct.ExtCoreRegister* %4 to i8*
  %67 = bitcast %struct.ExtCoreRegister* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = getelementptr inbounds %struct.ExtCoreRegister, %struct.ExtCoreRegister* %4, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.ExtCoreRegister, %struct.ExtCoreRegister* %4, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.ExtCoreRegister, %struct.ExtCoreRegister* %4, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ExtCoreRegister, %struct.ExtCoreRegister* %4, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @ExtReadWrite_image(i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75, i8* %78)
  br label %80

80:                                               ; preds = %71, %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %57

84:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @NUM_EXT_COND, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 0), align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arc_extension_map, i32 0, i32 0), align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %96, %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %85

107:                                              ; preds = %85
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ExtReadWrite_image(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
