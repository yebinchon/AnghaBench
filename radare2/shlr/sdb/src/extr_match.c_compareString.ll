; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_match.c_compareString.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_match.c_compareString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDB_LIKE_START = common dso_local global i32 0, align 4
@SDB_LIKE_END = common dso_local global i32 0, align 4
@SDB_LIKE_BASE64 = common dso_local global i32 0, align 4
@SDB_LIKE_ICASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @compareString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compareString(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @SDB_LIKE_START, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SDB_LIKE_END, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23, %4
  store i32 0, i32* %5, align 4
  br label %174

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SDB_LIKE_BASE64, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @sdb_decode(i8* %36, i32* %13)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %174

42:                                               ; preds = %35
  %43 = load i8*, i8** %12, align 8
  store i8* %43, i8** %6, align 8
  br label %47

44:                                               ; preds = %30
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %170

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SDB_LIKE_ICASE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %114

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @mycmp(i8* %67, i8* %68, i32 %69, i32 0)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %66, %62
  %74 = phi i1 [ false, %62 ], [ %72, %66 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %14, align 4
  br label %113

76:                                               ; preds = %59, %56
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @mycmp(i8* %80, i8* %81, i32 %82, i32 0)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %14, align 4
  br label %112

87:                                               ; preds = %76
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @mycmp(i8* %96, i8* %97, i32 %98, i32 0)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %14, align 4
  br label %111

103:                                              ; preds = %87
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mycmp(i8* %104, i8* %105, i32 %106, i32 1)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %103, %90
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %73
  br label %169

114:                                              ; preds = %51
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i8*, i8** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @strncmp(i8* %125, i8* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi i1 [ false, %120 ], [ %130, %124 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %14, align 4
  br label %168

134:                                              ; preds = %117, %114
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @strncmp(i8* %138, i8* %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %14, align 4
  br label %167

145:                                              ; preds = %134
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @strncmp(i8* %154, i8* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %14, align 4
  br label %166

161:                                              ; preds = %145
  %162 = load i8*, i8** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @strstr2(i8* %162, i8* %163, i32 %164)
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %161, %148
  br label %167

167:                                              ; preds = %166, %137
  br label %168

168:                                              ; preds = %167, %131
  br label %169

169:                                              ; preds = %168, %113
  br label %170

170:                                              ; preds = %169, %47
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %170, %41, %29
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i64 @sdb_decode(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mycmp(i8*, i8*, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strstr2(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
