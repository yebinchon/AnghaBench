; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_funcs.c_file_getbuffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_funcs.c_file_getbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i8*, i8* }

@R_MAGIC_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ms->o.buf = NULL\0A\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @file_getbuffer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %178

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @R_MAGIC_RAW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %2, align 8
  br label %178

31:                                               ; preds = %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %178

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @SIZE_MAX, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sdiv i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @file_oomem(%struct.TYPE_6__* %52, i64 %53)
  store i8* null, i8** %2, align 8
  br label %178

55:                                               ; preds = %39
  %56 = load i64, i64* %8, align 8
  %57 = mul i64 %56, 4
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i8* @realloc(i8* %62, i64 %63)
  store i8* %64, i8** %4, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @file_oomem(%struct.TYPE_6__* %67, i64 %68)
  store i8* null, i8** %2, align 8
  br label %178

70:                                               ; preds = %55
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  store i32 1, i32* %11, align 4
  %75 = call i32 @memset(i32* %9, i32 0, i32 4)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %6, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %13, align 8
  br label %87

87:                                               ; preds = %130, %70
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = icmp ult i8* %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = call i64 @mbrtowc(i32* %10, i8* %92, i64 %97, i32* %9)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, -1
  br i1 %100, label %104, label %101

101:                                              ; preds = %91
  %102 = load i64, i64* %12, align 8
  %103 = icmp eq i64 %102, -2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %91
  store i32 0, i32* %11, align 4
  br label %131

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @iswprint(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i8*, i8** %6, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i32 @memcpy(i8* %110, i8* %111, i64 %112)
  %114 = load i64, i64* %12, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %5, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %6, align 8
  br label %130

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %12, align 8
  %124 = icmp ugt i64 %122, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 @OCTALIFY(i8* %126, i8* %127)
  br label %121

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %109
  br label %87

131:                                              ; preds = %104, %87
  %132 = load i8*, i8** %6, align 8
  store i8 0, i8* %132, align 1
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  store i8* %139, i8** %2, align 8
  br label %178

140:                                              ; preds = %131
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %6, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %5, align 8
  br label %149

149:                                              ; preds = %169, %140
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = icmp ne i8 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %149
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = call i64 @isprint(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %6, align 8
  store i8 %161, i8* %162, align 1
  br label %168

164:                                              ; preds = %153
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @OCTALIFY(i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %164, %159
  br label %169

169:                                              ; preds = %168
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  br label %149

172:                                              ; preds = %149
  %173 = load i8*, i8** %6, align 8
  store i8 0, i8* %173, align 1
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  store i8* %177, i8** %2, align 8
  br label %178

178:                                              ; preds = %172, %135, %66, %51, %37, %26, %18
  %179 = load i8*, i8** %2, align 8
  ret i8* %179
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @file_oomem(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mbrtowc(i32*, i8*, i64, i32*) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OCTALIFY(i8*, i8*) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
