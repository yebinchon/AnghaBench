; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_create.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_simple_pattern_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i8, %struct.simple_pattern* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.simple_pattern* @simple_pattern_create(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.simple_pattern*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.simple_pattern*, align 8
  %9 = alloca %struct.simple_pattern*, align 8
  %10 = alloca [256 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.simple_pattern*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.simple_pattern* null, %struct.simple_pattern** %8, align 8
  store %struct.simple_pattern* null, %struct.simple_pattern** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i1 [ true, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.simple_pattern*, %struct.simple_pattern** %8, align 8
  store %struct.simple_pattern* %30, %struct.simple_pattern** %4, align 8
  br label %185

31:                                               ; preds = %24
  %32 = bitcast [256 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 1024, i1 false)
  %33 = bitcast i8* %32 to <{ [33 x i32], [223 x i32] }>*
  %34 = getelementptr inbounds <{ [33 x i32], [223 x i32] }>, <{ [33 x i32], [223 x i32] }>* %33, i32 0, i32 0
  %35 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 9
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 10
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 11
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 12
  store i32 1, i32* %38, align 16
  %39 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 13
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds [33 x i32], [33 x i32]* %34, i32 0, i32 32
  store i32 1, i32* %40, align 16
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %31
  %49 = phi i1 [ false, %31 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %55 = call i32 @memset(i32* %54, i32 0, i32 1024)
  br label %56

56:                                               ; preds = %60, %53
  %57 = load i8*, i8** %6, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %64
  store i32 1, i32* %65, align 4
  br label %56

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = add nsw i64 %69, 1
  %71 = call i8* @mallocz(i64 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %12, align 8
  br label %73

73:                                               ; preds = %180, %159, %67
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i1 [ false, %73 ], [ %80, %76 ]
  br i1 %82, label %83, label %181

83:                                               ; preds = %81
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %85, align 1
  %86 = load i8*, i8** %11, align 8
  store i8* %86, i8** %13, align 8
  store i8 0, i8* %14, align 1
  br label %87

87:                                               ; preds = %94, %83
  %88 = load i8*, i8** %12, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  br label %87

97:                                               ; preds = %87
  %98 = load i8*, i8** %12, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 33
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  store i8 1, i8* %14, align 1
  %103 = load i8*, i8** %12, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %12, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i8*, i8** %12, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %181

114:                                              ; preds = %105
  store i8 0, i8* %15, align 1
  br label %115

115:                                              ; preds = %149, %114
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 92
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8, i8* %15, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  store i8 1, i8* %15, align 1
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %12, align 8
  br label %149

130:                                              ; preds = %124, %119
  %131 = load i8*, i8** %12, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i8, i8* %15, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %12, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %12, align 8
  br label %150

143:                                              ; preds = %137, %130
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %12, align 8
  %146 = load i8, i8* %144, align 1
  %147 = load i8*, i8** %13, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %13, align 8
  store i8 %146, i8* %147, align 1
  store i8 0, i8* %15, align 1
  br label %149

149:                                              ; preds = %143, %127
  br label %115

150:                                              ; preds = %140, %115
  %151 = load i8*, i8** %13, align 8
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %11, align 8
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %73

160:                                              ; preds = %150
  %161 = load i8*, i8** %11, align 8
  %162 = load i32, i32* %7, align 4
  %163 = call %struct.simple_pattern* @parse_pattern(i8* %161, i32 %162)
  store %struct.simple_pattern* %163, %struct.simple_pattern** %16, align 8
  %164 = load i8, i8* %14, align 1
  %165 = load %struct.simple_pattern*, %struct.simple_pattern** %16, align 8
  %166 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %165, i32 0, i32 0
  store i8 %164, i8* %166, align 8
  %167 = load %struct.simple_pattern*, %struct.simple_pattern** %8, align 8
  %168 = icmp ne %struct.simple_pattern* %167, null
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %160
  %174 = load %struct.simple_pattern*, %struct.simple_pattern** %16, align 8
  store %struct.simple_pattern* %174, %struct.simple_pattern** %9, align 8
  store %struct.simple_pattern* %174, %struct.simple_pattern** %8, align 8
  br label %180

175:                                              ; preds = %160
  %176 = load %struct.simple_pattern*, %struct.simple_pattern** %16, align 8
  %177 = load %struct.simple_pattern*, %struct.simple_pattern** %9, align 8
  %178 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %177, i32 0, i32 1
  store %struct.simple_pattern* %176, %struct.simple_pattern** %178, align 8
  %179 = load %struct.simple_pattern*, %struct.simple_pattern** %16, align 8
  store %struct.simple_pattern* %179, %struct.simple_pattern** %9, align 8
  br label %180

180:                                              ; preds = %175, %173
  br label %73

181:                                              ; preds = %113, %81
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @freez(i8* %182)
  %184 = load %struct.simple_pattern*, %struct.simple_pattern** %8, align 8
  store %struct.simple_pattern* %184, %struct.simple_pattern** %4, align 8
  br label %185

185:                                              ; preds = %181, %29
  %186 = load %struct.simple_pattern*, %struct.simple_pattern** %4, align 8
  ret %struct.simple_pattern* %186
}

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @mallocz(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.simple_pattern* @parse_pattern(i8*, i32) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
