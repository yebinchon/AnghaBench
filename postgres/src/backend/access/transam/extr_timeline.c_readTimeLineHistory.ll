; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_timeline.c_readTimeLineHistory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_timeline.c_readTimeLineHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i8* null, align 8
@ArchiveRecoveryRequested = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"RECOVERYHISTORY\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@NIL = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%u\09%X/%X\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"syntax error in history file: %s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Expected a numeric timeline ID.\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Expected a write-ahead log switchpoint location.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"invalid data in history file: %s\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Timeline IDs must be in increasing sequence.\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"invalid data in history file \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Timeline IDs must be less than child timeline's ID.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @readTimeLineHistory(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* @MAXFNAMELEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = call i64 @palloc(i32 12)
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %10, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = call i32* @list_make1(%struct.TYPE_4__* %44)
  store i32* %45, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %210

46:                                               ; preds = %1
  %47 = load i64, i64* @ArchiveRecoveryRequested, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @TLHistoryFileName(i8* %26, i32 %50)
  %52 = call i32 @RestoreArchivedFile(i8* %23, i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32 %52, i32* %13, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @TLHistoryFilePath(i8* %23, i32 %54)
  br label %56

56:                                               ; preds = %53, %49
  %57 = call i32* @AllocateFile(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* @FATAL, align 4
  %66 = call i32 (...) @errcode_for_file_access()
  %67 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %68 = call i32 @ereport(i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = call i64 @palloc(i32 12)
  %71 = inttoptr i64 %70 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %10, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = call i32* @list_make1(%struct.TYPE_4__* %81)
  store i32* %82, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %210

83:                                               ; preds = %56
  %84 = load i32*, i32** @NIL, align 8
  store i32* %84, i32** %4, align 8
  %85 = load i8*, i8** @InvalidXLogRecPtr, align 8
  store i8* %85, i8** %12, align 8
  br label %86

86:                                               ; preds = %146, %116, %83
  %87 = trunc i64 %28 to i32
  %88 = load i32*, i32** %9, align 8
  %89 = call i32* @fgets(i8* %29, i32 %87, i32* %88)
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %173

91:                                               ; preds = %86
  store i8* %29, i8** %15, align 8
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i8*, i8** %15, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @isspace(i8 zeroext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %15, align 8
  br label %92

106:                                              ; preds = %101, %92
  %107 = load i8*, i8** %15, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %15, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 35
  br i1 %115, label %116, label %117

116:                                              ; preds = %111, %106
  br label %86

117:                                              ; preds = %111
  %118 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %16, i64* %17, i64* %18)
  store i32 %118, i32* %19, align 4
  %119 = load i32, i32* %19, align 4
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @FATAL, align 4
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %124 = call i32 @errhint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %125 = call i32 @ereport(i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 3
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32, i32* @FATAL, align 4
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %132 = call i32 @errhint(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %133 = call i32 @ereport(i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32*, i32** %4, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, i32* @FATAL, align 4
  %143 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %29)
  %144 = call i32 @errhint(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %145 = call i32 @ereport(i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %141, %137, %134
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %11, align 4
  %148 = call i64 @palloc(i32 12)
  %149 = inttoptr i64 %148 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %10, align 8
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load i8*, i8** %12, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i64, i64* %17, align 8
  %158 = trunc i64 %157 to i32
  %159 = shl i32 %158, 32
  %160 = load i64, i64* %18, align 8
  %161 = trunc i64 %160 to i32
  %162 = or i32 %159, %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %12, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %171 = load i32*, i32** %4, align 8
  %172 = call i32* @lcons(%struct.TYPE_4__* %170, i32* %171)
  store i32* %172, i32** %4, align 8
  br label %86

173:                                              ; preds = %86
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @FreeFile(i32* %174)
  %176 = load i32*, i32** %4, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i32, i32* @FATAL, align 4
  %184 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %23)
  %185 = call i32 @errhint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %186 = call i32 @ereport(i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %182, %178, %173
  %188 = call i64 @palloc(i32 12)
  %189 = inttoptr i64 %188 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %10, align 8
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load i8*, i8** %12, align 8
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i8*, i8** @InvalidXLogRecPtr, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %202 = load i32*, i32** %4, align 8
  %203 = call i32* @lcons(%struct.TYPE_4__* %201, i32* %202)
  store i32* %203, i32** %4, align 8
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %187
  %207 = call i32 @KeepFileRestoredFromArchive(i8* %23, i8* %26)
  br label %208

208:                                              ; preds = %206, %187
  %209 = load i32*, i32** %4, align 8
  store i32* %209, i32** %2, align 8
  store i32 1, i32* %14, align 4
  br label %210

210:                                              ; preds = %208, %69, %32
  %211 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32*, i32** %2, align 8
  ret i32* %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @palloc(i32) #2

declare dso_local i32* @list_make1(%struct.TYPE_4__*) #2

declare dso_local i32 @TLHistoryFileName(i8*, i32) #2

declare dso_local i32 @RestoreArchivedFile(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @TLHistoryFilePath(i8*, i32) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @isspace(i8 zeroext) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i64*, i64*) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32* @lcons(%struct.TYPE_4__*, i32*) #2

declare dso_local i32 @FreeFile(i32*) #2

declare dso_local i32 @KeepFileRestoredFromArchive(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
