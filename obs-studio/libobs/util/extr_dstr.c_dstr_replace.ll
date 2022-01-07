; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_replace.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_replace(%struct.dstr* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load %struct.dstr*, %struct.dstr** %4, align 8
  %17 = call i64 @dstr_is_empty(%struct.dstr* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %178

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.dstr*, %struct.dstr** %4, align 8
  %30 = getelementptr inbounds %struct.dstr, %struct.dstr* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @strstr(i8* %37, i8* %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  %56 = call i32 @memmove(i8* %52, i8* %53, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %49
  br label %69

65:                                               ; preds = %41
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strcpy(i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i64, i64* %8, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  br label %36

75:                                               ; preds = %36
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %79, %80
  %82 = load i64, i64* %10, align 8
  %83 = mul i64 %81, %82
  %84 = load %struct.dstr*, %struct.dstr** %4, align 8
  %85 = getelementptr inbounds %struct.dstr, %struct.dstr* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %78, %75
  br label %178

89:                                               ; preds = %24
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %7, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %162

93:                                               ; preds = %89
  store i64 0, i64* %13, align 8
  br label %94

94:                                               ; preds = %99, %93
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i8* @strstr(i8* %95, i8* %96)
  store i8* %97, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i64, i64* %7, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 %100
  store i8* %102, i8** %9, align 8
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %94

105:                                              ; preds = %94
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %178

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %13, align 8
  %114 = mul i64 %112, %113
  %115 = load %struct.dstr*, %struct.dstr** %4, align 8
  %116 = getelementptr inbounds %struct.dstr, %struct.dstr* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load %struct.dstr*, %struct.dstr** %4, align 8
  %120 = load %struct.dstr*, %struct.dstr** %4, align 8
  %121 = getelementptr inbounds %struct.dstr, %struct.dstr* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = call i32 @dstr_ensure_capacity(%struct.dstr* %119, i64 %123)
  %125 = load %struct.dstr*, %struct.dstr** %4, align 8
  %126 = getelementptr inbounds %struct.dstr, %struct.dstr* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %9, align 8
  br label %128

128:                                              ; preds = %157, %109
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i8* @strstr(i8* %129, i8* %130)
  store i8* %131, i8** %9, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %161

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %14, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = call i64 @strlen(i8* %137)
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load i8*, i8** %9, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i8*, i8** %14, align 8
  %146 = load i64, i64* %15, align 8
  %147 = add i64 %146, 1
  %148 = call i32 @memmove(i8* %144, i8* %145, i64 %147)
  %149 = load i8*, i8** %9, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @memcpy(i8* %149, i8* %150, i64 %151)
  br label %157

153:                                              ; preds = %133
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @strcpy(i8* %154, i8* %155)
  br label %157

157:                                              ; preds = %153, %141
  %158 = load i64, i64* %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 %158
  store i8* %160, i8** %9, align 8
  br label %128

161:                                              ; preds = %128
  br label %177

162:                                              ; preds = %89
  br label %163

163:                                              ; preds = %168, %162
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = call i8* @strstr(i8* %164, i8* %165)
  store i8* %166, i8** %9, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i64, i64* %8, align 8
  %172 = call i32 @memcpy(i8* %169, i8* %170, i64 %171)
  %173 = load i64, i64* %8, align 8
  %174 = load i8*, i8** %9, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 %173
  store i8* %175, i8** %9, align 8
  br label %163

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %161
  br label %178

178:                                              ; preds = %19, %108, %177, %88
  ret void
}

declare dso_local i64 @dstr_is_empty(%struct.dstr*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @dstr_ensure_capacity(%struct.dstr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
