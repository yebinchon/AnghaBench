; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_pg_wcsformat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_pg_wcsformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lineptr = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@PG_UTF8 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\\u%04X\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\u????\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_wcsformat(i8* %0, i64 %1, i32 %2, %struct.lineptr* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lineptr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lineptr* %3, %struct.lineptr** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %17 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %14, align 8
  br label %19

19:                                               ; preds = %166, %5
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %171

29:                                               ; preds = %27
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PQmblen(i8* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %171

38:                                               ; preds = %29
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @PQdsplen(i8* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %120

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  store i8 0, i8* %50, align 1
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %54 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %13, align 4
  %55 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %56 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %55, i32 1
  store %struct.lineptr* %56, %struct.lineptr** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %49
  %64 = load i8*, i8** %14, align 8
  %65 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %66 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %119

67:                                               ; preds = %44
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @strcpy(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %13, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %14, align 8
  br label %118

79:                                               ; preds = %67
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %90, %84
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  store i8 32, i8* %86, align 1
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = srem i32 %91, 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %85, label %94

94:                                               ; preds = %90
  br label %117

95:                                               ; preds = %79
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %13, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %14, align 8
  br label %116

108:                                              ; preds = %95
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %14, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %14, align 8
  store i8 %113, i8* %114, align 1
  br label %116

116:                                              ; preds = %108, %98
  br label %117

117:                                              ; preds = %116, %94
  br label %118

118:                                              ; preds = %117, %72
  br label %119

119:                                              ; preds = %118, %63
  br label %161

120:                                              ; preds = %38
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @PG_UTF8, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @utf8_to_unicode(i8* %129)
  %131 = call i32 (i8*, i8*, ...) @sprintf(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %135

132:                                              ; preds = %123
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i8*, i8** %14, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 6
  store i8* %137, i8** %14, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 6
  store i32 %139, i32* %13, align 4
  br label %160

140:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %153, %140
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %14, align 8
  store i8 %150, i8* %151, align 1
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %141

156:                                              ; preds = %141
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %156, %135
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %7, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = load i8*, i8** %6, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %6, align 8
  br label %19

171:                                              ; preds = %37, %27
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %174 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %14, align 8
  store i8 0, i8* %175, align 1
  %177 = load i32, i32* %10, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = call i32 @exit(i32 1) #3
  unreachable

181:                                              ; preds = %171
  %182 = load %struct.lineptr*, %struct.lineptr** %9, align 8
  %183 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %182, i64 1
  %184 = getelementptr inbounds %struct.lineptr, %struct.lineptr* %183, i32 0, i32 0
  store i8* null, i8** %184, align 8
  ret void
}

declare dso_local i32 @PQmblen(i8*, i32) #1

declare dso_local i32 @PQdsplen(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @utf8_to_unicode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
