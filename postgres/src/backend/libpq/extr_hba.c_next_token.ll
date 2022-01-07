; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_next_token.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_hba.c_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"authentication file token too long, skipping: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"authentication file token too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32, i32*, i32*, i32, i8**)* @next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_token(i8** %0, i8* %1, i32 %2, i32* %3, i32* %4, i32 %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8** %6, i8*** %15, align 8
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load i8*, i8** %18, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = icmp ugt i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32*, i32** %12, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %13, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %53, %7
  %36 = load i8**, i8*** %9, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  %39 = load i8, i8* %37, align 1
  %40 = sext i8 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @pg_isblank(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  %48 = icmp eq i32 %47, 44
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i1 [ true, %42 ], [ %48, %46 ]
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i1 [ false, %35 ], [ %50, %49 ]
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %35

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %155, %54
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @pg_isblank(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ true, %58 ], [ %64, %62 ]
  br label %67

67:                                               ; preds = %65, %55
  %68 = phi i1 [ false, %55 ], [ %66, %65 ]
  br i1 %68, label %69, label %161

69:                                               ; preds = %67
  %70 = load i32, i32* %16, align 4
  %71 = icmp eq i32 %70, 35
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %83, %75
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %77, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %76

84:                                               ; preds = %76
  br label %161

85:                                               ; preds = %72, %69
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = icmp uge i8* %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load i8*, i8** %10, align 8
  store i8 0, i8* %90, align 1
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %94)
  %96 = call i32 @ereport(i32 %91, i32 %95)
  %97 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %97, align 8
  br label %98

98:                                               ; preds = %105, %89
  %99 = load i8**, i8*** %9, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %99, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  store i32 %103, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %98

106:                                              ; preds = %98
  %107 = load i8**, i8*** %9, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %107, align 8
  store i32 0, i32* %8, align 4
  br label %175

110:                                              ; preds = %85
  %111 = load i32, i32* %16, align 4
  %112 = icmp eq i32 %111, 44
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i32*, i32** %13, align 8
  store i32 1, i32* %117, align 4
  br label %161

118:                                              ; preds = %113, %110
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 34
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %20, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121, %118
  %125 = load i32, i32* %16, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %10, align 8
  store i8 %126, i8* %127, align 1
  br label %129

129:                                              ; preds = %124, %121
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %20, align 4
  br label %141

140:                                              ; preds = %132, %129
  store i32 0, i32* %20, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* %16, align 4
  %143 = icmp eq i32 %142, 34
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  store i32 %148, i32* %19, align 4
  store i32 1, i32* %21, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32*, i32** %12, align 8
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %144
  br label %155

155:                                              ; preds = %154, %141
  %156 = load i8**, i8*** %9, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %156, align 8
  %159 = load i8, i8* %157, align 1
  %160 = sext i8 %159 to i32
  store i32 %160, i32* %16, align 4
  br label %55

161:                                              ; preds = %116, %84, %67
  %162 = load i8**, i8*** %9, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %162, align 8
  %165 = load i8*, i8** %10, align 8
  store i8 0, i8* %165, align 1
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %161
  %169 = load i8*, i8** %10, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = icmp ugt i8* %169, %170
  br label %172

172:                                              ; preds = %168, %161
  %173 = phi i1 [ true, %161 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %106
  %176 = load i32, i32* %8, align 4
  ret i32 %176
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @pg_isblank(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
