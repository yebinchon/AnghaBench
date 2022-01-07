; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_format_message.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/winnls/string/extr_format_msg.c_format_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_args = type { i32, i32 }
%struct._format_message_data = type { i32, i8*, i8*, i32, i32*, i8*, i64 }

@FALSE = common dso_local global i8* null, align 8
@FORMAT_MESSAGE_MAX_WIDTH_MASK = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, %struct.format_args*)* @format_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_message(i8* %0, i32 %1, i8* %2, %struct.format_args* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.format_args*, align 8
  %10 = alloca %struct._format_message_data, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.format_args* %3, %struct.format_args** %9, align 8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** %12, align 8
  %18 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 0
  store i32 100, i32* %18, align 8
  %19 = call i32 (...) @GetProcessHeap()
  %20 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i8* @HeapAlloc(i32 %19, i32 0, i32 %25)
  %27 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FORMAT_MESSAGE_MAX_WIDTH_MASK, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 5
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %224, %4
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %49, label %225

49:                                               ; preds = %47
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %179

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %166 [
    i32 49, label %60
    i32 50, label %60
    i32 51, label %60
    i32 52, label %60
    i32 53, label %60
    i32 54, label %60
    i32 55, label %60
    i32 56, label %60
    i32 57, label %60
    i32 110, label %141
    i32 114, label %146
    i32 116, label %150
    i32 48, label %154
    i32 0, label %158
  ]

60:                                               ; preds = %54, %54, %54, %54, %54, %54, %54, %54, %54
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %165

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.format_args*, %struct.format_args** %9, align 8
  %73 = getelementptr inbounds %struct.format_args, %struct.format_args* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = load %struct.format_args*, %struct.format_args** %9, align 8
  %83 = getelementptr inbounds %struct.format_args, %struct.format_args* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81, %71
  %87 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %88 = call i32 @SetLastError(i32 %87)
  %89 = call i32 (...) @GetProcessHeap()
  %90 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @HeapFree(i32 %89, i32 0, i8* %91)
  store i8* null, i8** %5, align 8
  br label %230

93:                                               ; preds = %81, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 48
  store i32 %98, i32* %13, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  switch i32 %102, label %115 [
    i32 48, label %103
    i32 49, label %103
    i32 50, label %103
    i32 51, label %103
    i32 52, label %103
    i32 53, label %103
    i32 54, label %103
    i32 55, label %103
    i32 56, label %103
    i32 57, label %103
  ]

103:                                              ; preds = %94, %94, %94, %94, %94, %94, %94, %94, %94, %94
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %106, 10
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %107, %110
  %112 = sub nsw i32 %111, 48
  store i32 %112, i32* %13, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %11, align 8
  br label %118

115:                                              ; preds = %94
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %115, %103
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.format_args*, %struct.format_args** %9, align 8
  %124 = call i8* @format_insert(i8* %119, i32 %120, i8* %121, i32 %122, %struct.format_args* %123, i8** %14)
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %14, align 8
  store i8* %125, i8** %15, align 8
  br label %126

126:                                              ; preds = %134, %118
  %127 = load i8*, i8** %15, align 8
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i8*, i8** %15, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i8*, i8** %15, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %15, align 8
  br label %126

137:                                              ; preds = %126
  %138 = call i32 (...) @GetProcessHeap()
  %139 = load i8*, i8** %14, align 8
  %140 = call i32 @HeapFree(i32 %138, i32 0, i8* %139)
  br label %178

141:                                              ; preds = %54
  %142 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 13)
  %143 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 10)
  %144 = load i8*, i8** %11, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %11, align 8
  br label %178

146:                                              ; preds = %54
  %147 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 13)
  %148 = load i8*, i8** %11, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %11, align 8
  br label %178

150:                                              ; preds = %54
  %151 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 9)
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %11, align 8
  br label %178

154:                                              ; preds = %54
  %155 = load i8*, i8** @TRUE, align 8
  store i8* %155, i8** %12, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %11, align 8
  br label %178

158:                                              ; preds = %54
  %159 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %160 = call i32 @SetLastError(i32 %159)
  %161 = call i32 (...) @GetProcessHeap()
  %162 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @HeapFree(i32 %161, i32 0, i8* %163)
  store i8* null, i8** %5, align 8
  br label %230

165:                                              ; preds = %65
  br label %166

166:                                              ; preds = %54, %165
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 37)
  br label %173

173:                                              ; preds = %171, %166
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %11, align 8
  %176 = load i8, i8* %174, align 1
  %177 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext %176)
  br label %178

178:                                              ; preds = %173, %154, %150, %146, %141, %137
  br label %224

179:                                              ; preds = %49
  %180 = load i8*, i8** %11, align 8
  %181 = load i8, i8* %180, align 1
  store i8 %181, i8* %16, align 1
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %11, align 8
  %184 = load i8, i8* %16, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 13
  br i1 %186, label %187, label %205

187:                                              ; preds = %179
  %188 = load i8*, i8** %11, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 10
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %11, align 8
  br label %195

195:                                              ; preds = %192, %187
  %196 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 32)
  br label %204

201:                                              ; preds = %195
  %202 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 13)
  %203 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 10)
  br label %204

204:                                              ; preds = %201, %199
  br label %223

205:                                              ; preds = %179
  %206 = load i8, i8* %16, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 10
  br i1 %208, label %209, label %219

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 32)
  br label %218

215:                                              ; preds = %209
  %216 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 13)
  %217 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext 10)
  br label %218

218:                                              ; preds = %215, %213
  br label %222

219:                                              ; preds = %205
  %220 = load i8, i8* %16, align 1
  %221 = call i32 @format_add_char(%struct._format_message_data* %10, i8 signext %220)
  br label %222

222:                                              ; preds = %219, %218
  br label %223

223:                                              ; preds = %222, %204
  br label %224

224:                                              ; preds = %223, %178
  br label %38

225:                                              ; preds = %47
  %226 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  store i8 0, i8* %227, align 1
  %228 = getelementptr inbounds %struct._format_message_data, %struct._format_message_data* %10, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %5, align 8
  br label %230

230:                                              ; preds = %225, %158, %86
  %231 = load i8*, i8** %5, align 8
  ret i8* %231
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i8* @format_insert(i8*, i32, i8*, i32, %struct.format_args*, i8**) #1

declare dso_local i32 @format_add_char(%struct._format_message_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
