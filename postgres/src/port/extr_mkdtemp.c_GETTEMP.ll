; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_mkdtemp.c_GETTEMP.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_mkdtemp.c_GETTEMP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@GETTEMP.xtra = internal global [2 x i8] c"aa", align 1
@ENOTDIR = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @GETTEMP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GETTEMP(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @_DIAGASSERT(i32 %16)
  %18 = call i32 (...) @getpid()
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %34, %3
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 88
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %20

37:                                               ; preds = %20
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 0), align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %9, align 8
  store i8 %41, i8* %43, align 1
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 1), align 1
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %9, align 8
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %12, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = srem i32 %60, 10
  %62 = add nsw i32 %61, 48
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %9, align 8
  store i8 %63, i8* %65, align 1
  %66 = load i32, i32* %11, align 4
  %67 = sdiv i32 %66, 10
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 0), align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 122
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 0), align 1
  %77 = add i8 %76, 1
  store i8 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 0), align 1
  br label %87

78:                                               ; preds = %71
  store i8 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 0), align 1
  %79 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 1), align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 122
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 1), align 1
  %84 = add i8 %83, 1
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 1), align 1
  br label %86

85:                                               ; preds = %78
  store i8 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @GETTEMP.xtra, i64 0, i64 1), align 1
  br label %86

86:                                               ; preds = %85, %82
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %8, align 8
  br label %90

90:                                               ; preds = %135, %87
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ule i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %138

95:                                               ; preds = %90
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 47
  br i1 %99, label %100, label %134

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @stat(i8* %102, %struct.stat* %10)
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %9, align 8
  store i8 47, i8* %104, align 1
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load i32*, i32** %6, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %4, align 4
  br label %214

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @S_ISDIR(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load i64, i64* @ENOTDIR, align 8
  store i64 %123, i64* @errno, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %4, align 4
  br label %214

133:                                              ; preds = %117
  br label %138

134:                                              ; preds = %95
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %9, align 8
  br label %90

138:                                              ; preds = %133, %94
  br label %139

139:                                              ; preds = %213, %138
  %140 = load i32*, i32** %6, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %159

142:                                              ; preds = %139
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* @O_CREAT, align 4
  %145 = load i32, i32* @O_EXCL, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @O_RDWR, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @open(i8* %143, i32 %148, i32 384)
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  %151 = icmp sge i32 %149, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  store i32 1, i32* %4, align 4
  br label %214

153:                                              ; preds = %142
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EEXIST, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %214

158:                                              ; preds = %153
  br label %185

159:                                              ; preds = %139
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i8*, i8** %5, align 8
  %164 = call i64 @mkdir(i8* %163, i32 448)
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %214

167:                                              ; preds = %162
  %168 = load i64, i64* @errno, align 8
  %169 = load i64, i64* @EEXIST, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %214

172:                                              ; preds = %167
  br label %184

173:                                              ; preds = %159
  %174 = load i8*, i8** %5, align 8
  %175 = call i64 @lstat(i8* %174, %struct.stat* %10)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i64, i64* @errno, align 8
  %179 = load i64, i64* @ENOENT, align 8
  %180 = icmp eq i64 %178, %179
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 1, i32 0
  store i32 %182, i32* %4, align 4
  br label %214

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %172
  br label %185

185:                                              ; preds = %184, %158
  %186 = load i8*, i8** %8, align 8
  store i8* %186, i8** %9, align 8
  br label %187

187:                                              ; preds = %212, %185
  %188 = load i8*, i8** %9, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  store i32 0, i32* %4, align 4
  br label %214

192:                                              ; preds = %187
  %193 = load i8*, i8** %9, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 122
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %9, align 8
  store i8 97, i8* %198, align 1
  br label %212

200:                                              ; preds = %192
  %201 = load i8*, i8** %9, align 8
  %202 = load i8, i8* %201, align 1
  %203 = call i64 @isdigit(i8 zeroext %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i8*, i8** %9, align 8
  store i8 97, i8* %206, align 1
  br label %211

207:                                              ; preds = %200
  %208 = load i8*, i8** %9, align 8
  %209 = load i8, i8* %208, align 1
  %210 = add i8 %209, 1
  store i8 %210, i8* %208, align 1
  br label %211

211:                                              ; preds = %207, %205
  br label %213

212:                                              ; preds = %197
  br label %187

213:                                              ; preds = %211
  br label %139

214:                                              ; preds = %191, %177, %171, %166, %157, %152, %130, %114
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local i32 @_DIAGASSERT(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
