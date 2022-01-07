; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_read_backup_label.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_read_backup_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFNAMELEN = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@BACKUP_LABEL_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"START WAL LOCATION: %X/%X (file %08X%16s)%c\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid data in file \22%s\22\00", align 1
@RedoStartLSN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"CHECKPOINT LOCATION: %X/%X%c\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"BACKUP METHOD: %19s\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"streamed\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"BACKUP FROM: %19s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"START TIME: %127[^\0A]\0A\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"backup time %s in file \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"LABEL: %1023[^\0A]\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"backup label %s in file \22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"START TIMELINE: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Timeline ID parsed is %u, but expected %u.\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"backup timeline %u in file \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @read_backup_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_backup_label(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca i8, align 1
  %14 = alloca [20 x i8], align 16
  %15 = alloca [20 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32, i32* @MAXFNAMELEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i32*, i32** %6, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %31 = call i32* @AllocateFile(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @FATAL, align 4
  %40 = call i32 (...) @errcode_for_file_access()
  %41 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = call i32 @ereport(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %170

45:                                               ; preds = %3
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 (i32*, i8*, ...) @fscanf(i32* %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %18, i32* %19, i8* %10, i8* %24, i8* %13)
  %48 = icmp ne i32 %47, 5
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %13, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %60

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @FATAL, align 4
  %55 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = call i32 @ereport(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %49
  %61 = load i32, i32* %18, align 4
  %62 = shl i32 %61, 32
  %63 = load i32, i32* %19, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* @RedoStartLSN, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 (i32*, i8*, ...) @fscanf(i32* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32* %18, i32* %19, i8* %13)
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %72, label %68

68:                                               ; preds = %60
  %69 = load i8, i8* %13, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %60
  %73 = load i32, i32* @FATAL, align 4
  %74 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = call i32 @ereport(i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  %80 = load i32, i32* %18, align 4
  %81 = shl i32 %80, 32
  %82 = load i32, i32* %19, align 4
  %83 = or i32 %81, %82
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %87 = call i32 (i32*, i8*, ...) @fscanf(i32* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = getelementptr inbounds [20 x i8], [20 x i8]* %14, i64 0, i64 0
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %89
  br label %96

96:                                               ; preds = %95, %79
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %99 = call i32 (i32*, i8*, ...) @fscanf(i32* %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %98)
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %96
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %111 = call i32 (i32*, i8*, ...) @fscanf(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @DEBUG1, align 4
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %116 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %115, i32 %116)
  %118 = call i32 @ereport(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 (i32*, i8*, ...) @fscanf(i32* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %27)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* @DEBUG1, align 4
  %125 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %126 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %27, i32 %125)
  %127 = call i32 @ereport(i32 %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32*, i32** %12, align 8
  %130 = call i32 (i32*, i8*, ...) @fscanf(i32* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %11)
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %155

132:                                              ; preds = %128
  %133 = load i8, i8* %10, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i32, i32* @FATAL, align 4
  %140 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %141 = call i32 @errcode(i32 %140)
  %142 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %143 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i8, i8* %11, align 1
  %145 = load i8, i8* %10, align 1
  %146 = call i32 @errdetail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i8 signext %144, i8 signext %145)
  %147 = call i32 @ereport(i32 %139, i32 %146)
  br label %148

148:                                              ; preds = %138, %132
  %149 = load i32, i32* @DEBUG1, align 4
  %150 = load i8, i8* %11, align 1
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %153 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32 %151, i32 %152)
  %154 = call i32 @ereport(i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %148, %128
  %156 = load i32*, i32** %12, align 8
  %157 = call i64 @ferror(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32*, i32** %12, align 8
  %161 = call i64 @FreeFile(i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159, %155
  %164 = load i32, i32* @FATAL, align 4
  %165 = call i32 (...) @errcode_for_file_access()
  %166 = load i32, i32* @BACKUP_LABEL_FILE, align 4
  %167 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = call i32 @ereport(i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %163, %159
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %170

170:                                              ; preds = %169, %44
  %171 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @AllocateFile(i32, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @fscanf(i32*, i8*, ...) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @errdetail(i8*, i8 signext, i8 signext) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @FreeFile(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
