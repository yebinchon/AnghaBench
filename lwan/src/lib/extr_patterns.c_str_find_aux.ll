; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i32, i8*, i8*, i8*, i32*, i64, i32, i32 }
%struct.str_find = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"starting after string's end\00", align 1
@MAXCAPTURES = common dso_local global i64 0, align 8
@MAXCCALLS = common dso_local global i32 0, align 4
@MAXREPETITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.match_state*, i8*, i8*, %struct.str_find*, i64, i64)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(%struct.match_state* %0, i8* %1, i8* %2, %struct.str_find* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.match_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.str_find*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.match_state* %0, %struct.match_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.str_find* %3, %struct.str_find** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %14, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %15, align 8
  %27 = load i8*, i8** %10, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %17, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %40

32:                                               ; preds = %6
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.match_state*, %struct.match_state** %8, align 8
  %38 = call i32 @match_error(%struct.match_state* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %7, align 4
  br label %193

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i8*, i8** %16, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %18, align 8
  %44 = load i8*, i8** %17, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @nospecials(i8* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %102

48:                                               ; preds = %40
  %49 = load i8*, i8** %18, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = sub i64 %50, %51
  %53 = load i8*, i8** %17, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i8* @lmemfind(i8* %49, i64 %52, i8* %53, i64 %54)
  store i8* %55, i8** %19, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %193

59:                                               ; preds = %48
  store i32 0, i32* %21, align 4
  %60 = load %struct.str_find*, %struct.str_find** %11, align 8
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.str_find, %struct.str_find* %60, i64 %62
  %64 = getelementptr inbounds %struct.str_find, %struct.str_find* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.str_find*, %struct.str_find** %11, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.str_find, %struct.str_find* %66, i64 %68
  %70 = getelementptr inbounds %struct.str_find, %struct.str_find* %69, i32 0, i32 1
  store i64 %65, i64* %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %73, label %99

73:                                               ; preds = %59
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %21, align 4
  %76 = load i8*, i8** %19, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.str_find*, %struct.str_find** %11, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.str_find, %struct.str_find* %82, i64 %84
  %86 = getelementptr inbounds %struct.str_find, %struct.str_find* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 8
  %87 = load i8*, i8** %19, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %15, align 8
  %93 = add nsw i64 %91, %92
  %94 = load %struct.str_find*, %struct.str_find** %11, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.str_find, %struct.str_find* %94, i64 %96
  %98 = getelementptr inbounds %struct.str_find, %struct.str_find* %97, i32 0, i32 1
  store i64 %93, i64* %98, align 8
  br label %99

99:                                               ; preds = %73, %59
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %193

102:                                              ; preds = %40
  %103 = load i8*, i8** %17, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 94
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %17, align 8
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %15, align 8
  br label %115

115:                                              ; preds = %110, %102
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @MAXCAPTURES, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* @MAXCAPTURES, align 8
  br label %123

121:                                              ; preds = %115
  %122 = load i64, i64* %12, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i64 [ %120, %119 ], [ %122, %121 ]
  %125 = sub i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = load %struct.match_state*, %struct.match_state** %8, align 8
  %128 = getelementptr inbounds %struct.match_state, %struct.match_state* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @MAXCCALLS, align 4
  %130 = load %struct.match_state*, %struct.match_state** %8, align 8
  %131 = getelementptr inbounds %struct.match_state, %struct.match_state* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* @MAXREPETITION, align 4
  %133 = load %struct.match_state*, %struct.match_state** %8, align 8
  %134 = getelementptr inbounds %struct.match_state, %struct.match_state* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load %struct.match_state*, %struct.match_state** %8, align 8
  %137 = getelementptr inbounds %struct.match_state, %struct.match_state* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %16, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load %struct.match_state*, %struct.match_state** %8, align 8
  %142 = getelementptr inbounds %struct.match_state, %struct.match_state* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = load i64, i64* %15, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load %struct.match_state*, %struct.match_state** %8, align 8
  %147 = getelementptr inbounds %struct.match_state, %struct.match_state* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %190, %123
  %149 = load %struct.match_state*, %struct.match_state** %8, align 8
  %150 = getelementptr inbounds %struct.match_state, %struct.match_state* %149, i32 0, i32 5
  store i64 0, i64* %150, align 8
  %151 = load %struct.match_state*, %struct.match_state** %8, align 8
  %152 = load i8*, i8** %18, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = call i8* @match(%struct.match_state* %151, i8* %152, i8* %153)
  store i8* %154, i8** %22, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %171

156:                                              ; preds = %148
  %157 = load %struct.str_find*, %struct.str_find** %11, align 8
  %158 = getelementptr inbounds %struct.str_find, %struct.str_find* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load i64, i64* %14, align 8
  %160 = load %struct.str_find*, %struct.str_find** %11, align 8
  %161 = getelementptr inbounds %struct.str_find, %struct.str_find* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  %162 = load %struct.match_state*, %struct.match_state** %8, align 8
  %163 = load i8*, i8** %18, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = load %struct.str_find*, %struct.str_find** %11, align 8
  %166 = getelementptr inbounds %struct.str_find, %struct.str_find* %165, i64 1
  %167 = load i64, i64* %12, align 8
  %168 = sub i64 %167, 1
  %169 = call i32 @push_captures(%struct.match_state* %162, i8* %163, i8* %164, %struct.str_find* %166, i64 %168)
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %193

171:                                              ; preds = %148
  %172 = load %struct.match_state*, %struct.match_state** %8, align 8
  %173 = getelementptr inbounds %struct.match_state, %struct.match_state* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 0, i32* %7, align 4
  br label %193

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %18, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %18, align 8
  %182 = load %struct.match_state*, %struct.match_state** %8, align 8
  %183 = getelementptr inbounds %struct.match_state, %struct.match_state* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ult i8* %180, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, i32* %20, align 4
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %186, %179
  %191 = phi i1 [ false, %179 ], [ %189, %186 ]
  br i1 %191, label %148, label %192

192:                                              ; preds = %190
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %192, %176, %156, %99, %58, %36
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @match_error(%struct.match_state*, i8*) #1

declare dso_local i64 @nospecials(i8*, i64) #1

declare dso_local i8* @lmemfind(i8*, i64, i8*, i64) #1

declare dso_local i8* @match(%struct.match_state*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.match_state*, i8*, i8*, %struct.str_find*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
