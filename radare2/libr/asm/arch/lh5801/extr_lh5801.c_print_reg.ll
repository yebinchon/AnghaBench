; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/lh5801/extr_lh5801.c_print_reg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/lh5801/extr_lh5801.c_print_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lh5801_insn_desc = type { i32 }
%struct.lh5801_insn = type { i64, i32, i32 }

@lh5801_insn_descs = common dso_local global %struct.lh5801_insn_desc* null, align 8
@__const.print_reg.names = private unnamed_addr constant [4 x i8] c"xyu\00", align 1
@LH5801_IFMT_REG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@LH5801_IFMT_FD_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.lh5801_insn*)* @print_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_reg(i8* %0, %struct.lh5801_insn* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lh5801_insn*, align 8
  %6 = alloca %struct.lh5801_insn_desc, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.lh5801_insn* %1, %struct.lh5801_insn** %5, align 8
  %10 = load %struct.lh5801_insn_desc*, %struct.lh5801_insn_desc** @lh5801_insn_descs, align 8
  %11 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %12 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %10, i64 %13
  %15 = bitcast %struct.lh5801_insn_desc* %6 to i8*
  %16 = bitcast %struct.lh5801_insn_desc* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %18 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4
  %22 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.print_reg.names, i32 0, i32 0), i64 4, i1 false)
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %9, align 8
  %24 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LH5801_IFMT_REG_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %31 [
    i32 134, label %28
    i32 128, label %29
    i32 133, label %30
  ]

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %99

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %99

30:                                               ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %99

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %99

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @LH5801_IFMT_RMODE(i32 %37)
  switch i32 %38, label %95 [
    i32 132, label %39
    i32 130, label %48
    i32 131, label %48
    i32 129, label %66
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 %43, i8* %45, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 0, i8* %47, align 1
  br label %96

48:                                               ; preds = %35, %35
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  %55 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 130
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 108, i32 104
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8 %61, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8 0, i8* %65, align 1
  br label %96

66:                                               ; preds = %35
  %67 = getelementptr inbounds %struct.lh5801_insn_desc, %struct.lh5801_insn_desc* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @LH5801_IFMT_FD_MOD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load %struct.lh5801_insn*, %struct.lh5801_insn** %5, align 8
  %74 = getelementptr inbounds %struct.lh5801_insn, %struct.lh5801_insn* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  store i8 35, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 40, i8* %82, align 1
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 41, i8* %90, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 0, i8* %92, align 1
  br label %94

93:                                               ; preds = %66
  store i8* null, i8** %3, align 8
  br label %99

94:                                               ; preds = %80
  br label %96

95:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %99

96:                                               ; preds = %94, %48, %39
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %9, align 8
  store i8* %98, i8** %3, align 8
  br label %99

99:                                               ; preds = %97, %95, %93, %34, %30, %29, %28
  %100 = load i8*, i8** %3, align 8
  ret i8* %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LH5801_IFMT_RMODE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
