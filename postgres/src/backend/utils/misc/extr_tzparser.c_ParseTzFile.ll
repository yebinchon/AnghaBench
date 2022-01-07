; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_ParseTzFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_tzparser.c_ParseTzFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid time zone file name \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"time zone file recursion limit exceeded in file \22%s\22\00", align 1
@my_exec_path = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s/timezonesets/%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s/timezonesets\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [125 x i8] c"This may indicate an incomplete PostgreSQL installation, or that the file \22%s\22 has been moved away from its proper location.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"could not read time zone file \22%s\22: %m\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"line is too long in time zone file \22%s\22, line %d\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"@INCLUDE\00", align 1
@WHITESPACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"@INCLUDE without file name in time zone file \22%s\22, line %d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"@OVERRIDE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32**, i32*, i32)* @ParseTzFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTzFile(i8* %0, i32 %1, i32** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1024 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @MAXPGPATH, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load i32, i32* @MAXPGPATH, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %21, align 8
  br label %34

34:                                               ; preds = %51, %5
  %35 = load i8*, i8** %21, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i8*, i8** %21, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @isalpha(i8 zeroext %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %21, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %21, align 8
  br label %34

54:                                               ; preds = %34
  %55 = load i32, i32* %8, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

60:                                               ; preds = %54
  %61 = load i32, i32* @my_exec_path, align 4
  %62 = call i32 @get_share_path(i32 %61, i8* %29)
  %63 = trunc i64 %31 to i32
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %29, i8* %64)
  %66 = call i32* @AllocateFile(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %23, align 4
  %71 = trunc i64 %31 to i32
  %72 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %32, i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %73 = call i32* @AllocateDir(i8* %32)
  store i32* %73, i32** %24, align 8
  %74 = load i32*, i32** %24, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %32)
  %78 = load i32, i32* @my_exec_path, align 4
  %79 = call i32 @GUC_check_errhint(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

80:                                               ; preds = %69
  %81 = load i32*, i32** %24, align 8
  %82 = call i32 @FreeDir(i32* %81)
  %83 = load i32, i32* %23, align 4
  store i32 %83, i32* @errno, align 4
  %84 = load i32, i32* @errno, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %80
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %87
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

94:                                               ; preds = %60
  br label %95

95:                                               ; preds = %215, %194, %188, %152, %146, %94
  %96 = load i32*, i32** %15, align 8
  %97 = call i32 @feof(i32* %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  br i1 %99, label %100, label %216

100:                                              ; preds = %95
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %19, align 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %104 = load i32*, i32** %15, align 8
  %105 = call i32* @fgets(i8* %103, i32 1024, i32* %104)
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load i32*, i32** %15, align 8
  %109 = call i64 @ferror(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %112)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

114:                                              ; preds = %107
  br label %216

115:                                              ; preds = %100
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %117 = call i32 @strlen(i8* %116)
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %118, 1023
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %121, i32 %122)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

124:                                              ; preds = %115
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  store i8* %125, i8** %17, align 8
  br label %126

126:                                              ; preds = %138, %124
  %127 = load i8*, i8** %17, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %17, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i64 @isspace(i8 zeroext %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = load i8*, i8** %17, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %17, align 8
  br label %126

141:                                              ; preds = %136
  %142 = load i8*, i8** %17, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %95

147:                                              ; preds = %141
  %148 = load i8*, i8** %17, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 35
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %95

153:                                              ; preds = %147
  %154 = load i8*, i8** %17, align 8
  %155 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %156 = call i64 @pg_strncasecmp(i8* %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %189

158:                                              ; preds = %153
  %159 = load i8*, i8** %17, align 8
  %160 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = call i8* @pstrdup(i8* %162)
  store i8* %163, i8** %25, align 8
  %164 = load i8*, i8** %25, align 8
  %165 = load i32, i32* @WHITESPACE, align 4
  %166 = call i8* @strtok(i8* %164, i32 %165)
  store i8* %166, i8** %25, align 8
  %167 = load i8*, i8** %25, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %158
  %170 = load i8*, i8** %25, align 8
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169, %158
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 (i8*, i8*, ...) @GUC_check_errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i8* %174, i32 %175)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

177:                                              ; preds = %169
  %178 = load i8*, i8** %25, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  %181 = load i32**, i32*** %9, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @ParseTzFile(i8* %178, i32 %180, i32** %181, i32* %182, i32 %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

188:                                              ; preds = %177
  br label %95

189:                                              ; preds = %153
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %192 = call i64 @pg_strncasecmp(i8* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %191)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 1, i32* %20, align 4
  br label %95

195:                                              ; preds = %189
  %196 = load i8*, i8** %7, align 8
  %197 = load i32, i32* %19, align 4
  %198 = load i8*, i8** %17, align 8
  %199 = call i32 @splitTzLine(i8* %196, i32 %197, i8* %198, i32* %18)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

202:                                              ; preds = %195
  %203 = call i32 @validateTzEntry(i32* %18)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

206:                                              ; preds = %202
  %207 = load i32**, i32*** %9, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %20, align 4
  %211 = call i32 @addToArray(i32** %207, i32* %208, i32 %209, i32* %18, i32 %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

215:                                              ; preds = %206
  br label %95

216:                                              ; preds = %114, %95
  %217 = load i32*, i32** %15, align 8
  %218 = call i32 @FreeFile(i32* %217)
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %220

220:                                              ; preds = %216, %214, %205, %201, %187, %173, %120, %111, %93, %76, %57, %49
  %221 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %6, align 4
  ret i32 %222
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @isalpha(i8 zeroext) #2

declare dso_local i32 @GUC_check_errmsg(i8*, i8*, ...) #2

declare dso_local i32 @get_share_path(i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32* @AllocateDir(i8*) #2

declare dso_local i32 @GUC_check_errhint(i8*, i32) #2

declare dso_local i32 @FreeDir(i32*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i8* @strtok(i8*, i32) #2

declare dso_local i32 @splitTzLine(i8*, i32, i8*, i32*) #2

declare dso_local i32 @validateTzEntry(i32*) #2

declare dso_local i32 @addToArray(i32**, i32*, i32, i32*, i32) #2

declare dso_local i32 @FreeFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
