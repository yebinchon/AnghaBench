; ModuleID = '/home/carl/AnghaBench/memcached/extr_authfile.c_authfile_load.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_authfile.c_authfile_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i8*, i32 }

@MAX_ENTRIES = common dso_local global i32 0, align 4
@AUTHFILE_MISSING = common dso_local global i32 0, align 4
@AUTHFILE_OOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@AUTHFILE_OPENFAIL = common dso_local global i32 0, align 4
@MAX_ENTRY_LEN = common dso_local global i32 0, align 4
@AUTHFILE_MALFORMED = common dso_local global i32 0, align 4
@main_auth_data = common dso_local global i8* null, align 8
@entry_cnt = common dso_local global i32 0, align 4
@main_auth_entries = common dso_local global i32 0, align 4
@AUTHFILE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @authfile_load(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %5, align 8
  %15 = load i32, i32* @MAX_ENTRIES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca %struct.TYPE_3__, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @stat(i8* %19, %struct.stat* %4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @AUTHFILE_MISSING, align 4
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %168

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @calloc(i32 1, i32 %26)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @AUTHFILE_OOM, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %168

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* @AUTHFILE_OPENFAIL, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %168

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %10, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %145, %41
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @MAX_ENTRY_LEN, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @fgets(i8* %44, i32 %45, i32* %46)
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %152

49:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %118, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @MAX_ENTRY_LEN, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %121

54:                                               ; preds = %50
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 58
  br i1 %64, label %65, label %79

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  store i32 1, i32* %14, align 4
  br label %117

79:                                               ; preds = %57, %54
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 13
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %98, %90, %82
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  %112 = sub nsw i32 %107, %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  br label %121

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %79
  br label %117

117:                                              ; preds = %116, %65
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %50

121:                                              ; preds = %106, %50
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %9, align 8
  %126 = call i32 @fclose(i32* %125)
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i32, i32* @AUTHFILE_MALFORMED, align 4
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %168

130:                                              ; preds = %121
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* @MAX_ENTRIES, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %152

136:                                              ; preds = %130
  %137 = load i8*, i8** %10, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %152

145:                                              ; preds = %136
  %146 = load i32, i32* %13, align 4
  %147 = load i8*, i8** %10, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %10, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 1
  store %struct.TYPE_3__* %151, %struct.TYPE_3__** %11, align 8
  br label %43

152:                                              ; preds = %144, %135, %43
  %153 = load i8*, i8** @main_auth_data, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i8*, i8** @main_auth_data, align 8
  %157 = call i32 @free(i8* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* @entry_cnt, align 4
  %160 = load i8*, i8** %5, align 8
  store i8* %160, i8** @main_auth_data, align 8
  %161 = load i32, i32* @main_auth_entries, align 4
  %162 = mul nuw i64 32, %16
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memcpy(i32 %161, %struct.TYPE_3__* %18, i32 %163)
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @fclose(i32* %165)
  %167 = load i32, i32* @AUTHFILE_OK, align 4
  store i32 %167, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %168

168:                                              ; preds = %158, %124, %37, %30, %22
  %169 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @memcpy(i32, %struct.TYPE_3__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
