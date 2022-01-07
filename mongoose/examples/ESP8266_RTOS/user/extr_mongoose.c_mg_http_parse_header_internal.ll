; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_parse_header_internal.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_parse_header_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i32 }
%struct.altbuf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_str*, i8*, %struct.altbuf*)* @mg_http_parse_header_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_parse_header_internal(%struct.mg_str* %0, i8* %1, %struct.altbuf* %2) #0 {
  %4 = alloca %struct.mg_str*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.altbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.mg_str* %0, %struct.mg_str** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.altbuf* %2, %struct.altbuf** %6, align 8
  store i32 32, i32* %7, align 4
  store i32 44, i32* %8, align 4
  store i32 59, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %17 = icmp ne %struct.mg_str* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i8* [ %26, %18 ], [ null, %27 ]
  store i8* %29, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %30 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %31 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  br label %33

33:                                               ; preds = %87, %28
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ult i8* %40, %41
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  br i1 %44, label %45, label %90

45:                                               ; preds = %43
  %46 = load i8*, i8** %13, align 8
  %47 = load %struct.mg_str*, %struct.mg_str** %4, align 8
  %48 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %46, %49
  br i1 %50, label %71, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %51
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 59
  br i1 %70, label %71, label %86

71:                                               ; preds = %65, %58, %51, %45
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 61
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @strncmp(i8* %80, i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %90

86:                                               ; preds = %79, %71, %65
  br label %87

87:                                               ; preds = %86
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %13, align 8
  br label %33

90:                                               ; preds = %85, %43
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %188

93:                                               ; preds = %90
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8*, i8** %12, align 8
  %100 = icmp ult i8* %98, %99
  br i1 %100, label %101, label %188

101:                                              ; preds = %93
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i8*, i8** %13, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 34
  br i1 %110, label %116, label %111

111:                                              ; preds = %101
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 39
  br i1 %115, label %116, label %121

116:                                              ; preds = %111, %101
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %13, align 8
  %119 = load i8, i8* %117, align 1
  %120 = sext i8 %119 to i32
  store i32 %120, i32* %9, align 4
  store i32 %120, i32* %8, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = load i8*, i8** %13, align 8
  store i8* %122, i8** %11, align 8
  br label %123

123:                                              ; preds = %169, %121
  %124 = load i8*, i8** %11, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = icmp ult i8* %124, %125
  br i1 %126, label %127, label %148

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %145, %146
  br label %148

148:                                              ; preds = %141, %134, %127, %123
  %149 = phi i1 [ false, %134 ], [ false, %127 ], [ false, %123 ], [ %147, %141 ]
  br i1 %149, label %150, label %175

150:                                              ; preds = %148
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 32
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 92
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load i8*, i8** %11, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i8*, i8** %11, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %11, align 8
  br label %169

169:                                              ; preds = %166, %159, %153, %150
  %170 = load %struct.altbuf*, %struct.altbuf** %6, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %11, align 8
  %173 = load i8, i8* %171, align 1
  %174 = call i32 @altbuf_append(%struct.altbuf* %170, i8 signext %173)
  br label %123

175:                                              ; preds = %148
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 32
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i8*, i8** %11, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load %struct.altbuf*, %struct.altbuf** %6, align 8
  %186 = call i32 @altbuf_reset(%struct.altbuf* %185)
  br label %187

187:                                              ; preds = %184, %178, %175
  br label %188

188:                                              ; preds = %187, %93, %90
  %189 = load %struct.altbuf*, %struct.altbuf** %6, align 8
  %190 = getelementptr inbounds %struct.altbuf, %struct.altbuf* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.altbuf*, %struct.altbuf** %6, align 8
  %195 = call i32 @altbuf_append(%struct.altbuf* %194, i8 signext 0)
  br label %196

196:                                              ; preds = %193, %188
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @altbuf_append(%struct.altbuf*, i8 signext) #1

declare dso_local i32 @altbuf_reset(%struct.altbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
