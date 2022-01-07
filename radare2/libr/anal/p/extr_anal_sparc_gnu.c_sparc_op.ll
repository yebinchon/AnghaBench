; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_sparc_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_sparc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i8*, i32, i32 }

@R_ANAL_OP_FAMILY_CPU = common dso_local global i32 0, align 4
@OP_0 = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_ILL = common dso_local global i8* null, align 8
@OP_1 = common dso_local global i64 0, align 8
@OP_2 = common dso_local global i64 0, align 8
@OP_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i8*, i32, i32)* @sparc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_op(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = call i32 @memset(%struct.TYPE_10__* %15, i32 0, i32 40)
  %17 = load i32, i32* @R_ANAL_OP_FAMILY_CPU, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  store i32 -1, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 -1, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %6
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = bitcast i32* %14 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 %41, i8* %43, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = bitcast i32* %14 to i8*
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = bitcast i32* %14 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 2
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = bitcast i32* %14 to i8*
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8 %56, i8* %58, align 1
  br label %63

59:                                               ; preds = %6
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @memcpy(i32* %14, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %38
  %64 = load i32, i32* %14, align 4
  %65 = call i64 @X_OP(i32 %64)
  %66 = load i64, i64* @OP_0, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @X_OP2(i32 %69)
  switch i32 %70, label %80 [
    i32 154, label %71
    i32 153, label %71
    i32 159, label %75
    i32 157, label %75
    i32 158, label %75
    i32 156, label %75
    i32 155, label %75
  ]

71:                                               ; preds = %68, %68
  %72 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  store i32 0, i32* %13, align 4
  br label %80

75:                                               ; preds = %68, %68, %68, %68, %68
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @anal_branch(%struct.TYPE_10__* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %75, %71
  br label %153

81:                                               ; preds = %63
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @X_OP(i32 %82)
  %84 = load i64, i64* @OP_1, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @anal_call(%struct.TYPE_10__* %87, i32 %88, i32 %89)
  br label %152

91:                                               ; preds = %81
  %92 = load i32, i32* %14, align 4
  %93 = call i64 @X_OP(i32 %92)
  %94 = load i64, i64* @OP_2, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @X_OP3(i32 %97)
  switch i32 %98, label %136 [
    i32 149, label %99
    i32 148, label %99
    i32 147, label %99
    i32 146, label %99
    i32 145, label %99
    i32 152, label %103
    i32 151, label %112
    i32 150, label %121
    i32 144, label %130
  ]

99:                                               ; preds = %96, %96, %96, %96, %96
  %100 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  store i32 0, i32* %13, align 4
  br label %136

103:                                              ; preds = %96
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @X_RD(i32 %104)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %136

112:                                              ; preds = %96
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @X_RS1(i32 %113)
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  store i32 0, i32* %13, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %136

121:                                              ; preds = %96
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @X_RS1(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %125, %121
  br label %136

130:                                              ; preds = %96
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @anal_jmpl(%struct.TYPE_11__* %131, %struct.TYPE_10__* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %96, %130, %129, %120, %111, %99
  br label %151

137:                                              ; preds = %91
  %138 = load i32, i32* %14, align 4
  %139 = call i64 @X_OP(i32 %138)
  %140 = load i64, i64* @OP_3, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @X_OP3(i32 %143)
  switch i32 %144, label %149 [
    i32 143, label %145
    i32 135, label %145
    i32 134, label %145
    i32 133, label %145
    i32 132, label %145
    i32 131, label %145
    i32 130, label %145
    i32 129, label %145
    i32 128, label %145
    i32 142, label %145
    i32 141, label %145
    i32 140, label %145
    i32 139, label %145
    i32 138, label %145
    i32 137, label %145
    i32 136, label %145
  ]

145:                                              ; preds = %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142, %142
  %146 = load i8*, i8** @R_ANAL_OP_TYPE_ILL, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %142, %145
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %136
  br label %152

152:                                              ; preds = %151, %86
  br label %153

153:                                              ; preds = %152, %80
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @X_OP(i32) #1

declare dso_local i32 @X_OP2(i32) #1

declare dso_local i32 @anal_branch(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @anal_call(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @X_OP3(i32) #1

declare dso_local i32 @X_RD(i32) #1

declare dso_local i32 @X_RS1(i32) #1

declare dso_local i32 @anal_jmpl(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
