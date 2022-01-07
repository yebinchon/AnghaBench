; ModuleID = '/home/carl/AnghaBench/progress/extr_progress.c_get_fdinfo.c'
source_filename = "/home/carl/AnghaBench/progress/extr_progress.c_get_fdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i32, i64* }
%struct.stat = type { i32, i32 }
%struct.timezone = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@LINE_LEN = common dso_local global i32 0, align 4
@PM_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s/%d/fd/%d\00", align 1
@PROC_PATH = common dso_local global i8* null, align 8
@flag_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"stat (get_fdinfo)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"open (get_fdinfo)\00", align 1
@BLKGETSIZE64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"ioctl (get_fdinfo)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s/%d/fdinfo/%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"fopen (get_fdinfo)\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pos:\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"flags:\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@PM_READ = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@PM_WRITE = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@PM_READWRITE = common dso_local global i8* null, align 8
@DKIOCGETBLOCKCOUNT = common dso_local global i32 0, align 4
@DKIOCGETBLOCKSIZE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@PROC_PIDFDVNODEPATHINFO = common dso_local global i32 0, align 4
@PROC_PIDFDVNODEPATHINFO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @get_fdinfo(i32 %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.timezone, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @LINE_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @PM_NONE, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = load i8*, i8** @PROC_PATH, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @snprintf(i8* %22, i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* @MAXPATHLEN, align 4
  %41 = call i32 @readlink(i8* %22, i64* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 0, i64* %50, align 8
  br label %52

51:                                               ; preds = %3
  store i8 0, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

52:                                               ; preds = %44
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @stat(i64* %55, %struct.stat* %8)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i64, i64* @flag_debug, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @nperror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58
  store i8 0, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISBLK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* @O_RDONLY, align 4
  %74 = call i32 @open(i64* %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i64, i64* @flag_debug, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @nperror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  store i8 0, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

83:                                               ; preds = %69
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* @BLKGETSIZE64, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = call i64 @ioctl(i32 %84, i32 %85, i32* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i64, i64* @flag_debug, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @nperror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @close(i32 %96)
  store i8 0, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

98:                                               ; preds = %83
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @close(i32 %99)
  br label %106

101:                                              ; preds = %64
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %98
  store i32 0, i32* %13, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  store i8* null, i8** %108, align 8
  %109 = load i32, i32* @MAXPATHLEN, align 4
  %110 = load i8*, i8** @PROC_PATH, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @snprintf(i8* %22, i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %110, i32 %111, i32 %112)
  %114 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %114, i32** %12, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = call i32 @gettimeofday(i32* %116, %struct.timezone* %14)
  %118 = load i32*, i32** %12, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %106
  %121 = load i64, i64* @flag_debug, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 @nperror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  store i8 0, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %148, %126
  %128 = load i32, i32* @LINE_LEN, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32*, i32** %12, align 8
  %131 = call i32* @fgets(i8* %25, i32 %129, i32* %130)
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds i8, i8* %25, i64 5
  %138 = call i8* @atoll(i8* %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %136, %133
  %142 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds i8, i8* %25, i64 7
  %146 = call i8* @atoll(i8* %145)
  %147 = ptrtoint i8* %146 to i32
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %144, %141
  br label %127

149:                                              ; preds = %127
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @O_ACCMODE, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* @O_RDONLY, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i8*, i8** @PM_READ, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* @O_ACCMODE, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @O_WRONLY, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i8*, i8** @PM_WRITE, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @O_ACCMODE, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* @O_RDWR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i8*, i8** @PM_READWRITE, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %175, %169
  %180 = load i32*, i32** %12, align 8
  %181 = call i32 @fclose(i32* %180)
  store i8 1, i8* %4, align 1
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %179, %125, %95, %82, %63, %51
  %183 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i8, i8* %4, align 1
  ret i8 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @readlink(i8*, i64*, i32) #2

declare dso_local i32 @stat(i64*, %struct.stat*) #2

declare dso_local i32 @nperror(i8*) #2

declare dso_local i64 @S_ISBLK(i32) #2

declare dso_local i32 @open(i64*, i32) #2

declare dso_local i64 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @gettimeofday(i32*, %struct.timezone*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @atoll(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
