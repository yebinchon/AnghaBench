; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_destroy_tablespace_directories.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablespace.c_destroy_tablespace_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"pg_tblspc/%u/%s\00", align 1
@TABLESPACE_VERSION_DIRECTORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"could not remove directory \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"\22%s\22 is not a directory or symbolic link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @destroy_tablespace_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_tablespace_directories(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @TABLESPACE_VERSION_DIRECTORY, align 4
  %16 = call i8* @psprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32* @AllocateDir(i8* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @WARNING, align 4
  %30 = call i32 (...) @errcode_for_file_access()
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  br label %128

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* @LOG, align 4
  %40 = call i32 (...) @errcode_for_file_access()
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 @ereport(i32 %39, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @pfree(i8* %44)
  store i32 0, i32* %3, align 4
  br label %210

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %2
  br label %49

49:                                               ; preds = %103, %66, %48
  %50 = load i32*, i32** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call %struct.dirent* @ReadDir(i32* %50, i8* %51)
  store %struct.dirent* %52, %struct.dirent** %9, align 8
  %53 = icmp ne %struct.dirent* %52, null
  br i1 %53, label %54, label %106

54:                                               ; preds = %49
  %55 = load %struct.dirent*, %struct.dirent** %9, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.dirent*, %struct.dirent** %9, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @strcmp(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %54
  br label %49

67:                                               ; preds = %60
  %68 = load i8*, i8** %7, align 8
  %69 = load %struct.dirent*, %struct.dirent** %9, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %71)
  store i8* %72, i8** %10, align 8
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @directory_is_empty(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @FreeDir(i32* %80)
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @pfree(i8* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @pfree(i8* %84)
  store i32 0, i32* %3, align 4
  br label %210

86:                                               ; preds = %75, %67
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @rmdir(i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @LOG, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @ERROR, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 (...) @errcode_for_file_access()
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = call i32 @ereport(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %86
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @pfree(i8* %104)
  br label %49

106:                                              ; preds = %49
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @FreeDir(i32* %107)
  %109 = load i8*, i8** %7, align 8
  %110 = call i64 @rmdir(i8* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @LOG, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @ERROR, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  %121 = call i32 (...) @errcode_for_file_access()
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  %124 = call i32 @ereport(i32 %120, i32 %123)
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @pfree(i8* %125)
  store i32 0, i32* %3, align 4
  br label %210

127:                                              ; preds = %106
  br label %128

128:                                              ; preds = %127, %34
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @pstrdup(i8* %129)
  store i8* %130, i8** %6, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @get_parent_directory(i8* %131)
  %133 = load i8*, i8** %6, align 8
  %134 = call i64 @lstat(i8* %133, %struct.stat* %11)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %128
  %137 = load i32, i32* @errno, align 4
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @LOG, align 4
  br label %152

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @ENOENT, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @WARNING, align 4
  br label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @ERROR, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  br label %152

152:                                              ; preds = %150, %140
  %153 = phi i32 [ %141, %140 ], [ %151, %150 ]
  %154 = call i32 (...) @errcode_for_file_access()
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %155)
  %157 = call i32 @ereport(i32 %153, i32 %156)
  br label %205

158:                                              ; preds = %128
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @S_ISDIR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %190

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = call i64 @rmdir(i8* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %163
  %168 = load i32, i32* @errno, align 4
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @LOG, align 4
  br label %183

173:                                              ; preds = %167
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @ENOENT, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* @WARNING, align 4
  br label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @ERROR, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  br label %183

183:                                              ; preds = %181, %171
  %184 = phi i32 [ %172, %171 ], [ %182, %181 ]
  %185 = call i32 (...) @errcode_for_file_access()
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %186)
  %188 = call i32 @ereport(i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %183, %163
  br label %204

190:                                              ; preds = %158
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32, i32* @LOG, align 4
  br label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @ERROR, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %200 = call i32 @errcode(i32 %199)
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %201)
  %203 = call i32 @ereport(i32 %198, i32 %202)
  br label %204

204:                                              ; preds = %197, %189
  br label %205

205:                                              ; preds = %204, %152
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @pfree(i8* %206)
  %208 = load i8*, i8** %6, align 8
  %209 = call i32 @pfree(i8* %208)
  store i32 1, i32* %3, align 4
  br label %210

210:                                              ; preds = %205, %119, %79, %38
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i8* @psprintf(i8*, i8*, i32) #1

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local %struct.dirent* @ReadDir(i32*, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @directory_is_empty(i8*) #1

declare dso_local i32 @FreeDir(i32*) #1

declare dso_local i64 @rmdir(i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i32 @get_parent_directory(i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
