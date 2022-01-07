; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_cs.c_assemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_arm_cs.c_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Error: ARM assembler only supports 16 or 32 bits\0A\00", align 1
@UT32_MAX = common dso_local global i32 0, align 4
@UT16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*)* @assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assemble(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 16
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 64
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @arm64ass(i8* %23, i32 %26, i32* %10)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %132

30:                                               ; preds = %22
  br label %50

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @armass_assemble(i8* %32, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 32
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 16
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %132

49:                                               ; preds = %42, %31
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @UT32_MAX, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %132

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = ashr i32 %59, 16
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 4, i32 2
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %88

67:                                               ; preds = %58
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 16
  %76 = call i32 @r_write_le16(i32* %73, i32 %75)
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @UT16_MAX, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @r_write_le16(i32* %78, i32 %81)
  br label %87

83:                                               ; preds = %67
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @r_write_be32(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %72
  br label %110

88:                                               ; preds = %58
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @UT16_MAX, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @r_write_le16(i32* %97, i32 %100)
  br label %108

102:                                              ; preds = %91
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @UT16_MAX, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @r_write_be16(i32* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %87
  br label %125

111:                                              ; preds = %55
  store i32 4, i32* %9, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @r_write_le32(i32* %117, i32 %118)
  br label %124

120:                                              ; preds = %111
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @r_write_be32(i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %110
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @r_strbuf_setbin(i32* %127, i32* %128, i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %125, %54, %47, %29
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @arm64ass(i8*, i32, i32*) #1

declare dso_local i32 @armass_assemble(i8*, i32, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_write_le16(i32*, i32) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @r_write_be16(i32*, i32) #1

declare dso_local i32 @r_write_le32(i32*, i32) #1

declare dso_local i32 @r_strbuf_setbin(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
