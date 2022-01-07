; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_send_receive.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_send_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@PURGE_TXCLEAR = common dso_local global i32 0, align 4
@PURGE_RXCLEAR = common dso_local global i32 0, align 4
@SR98_SLEEP_BEFORE_SEND = common dso_local global i32 0, align 4
@SR98_SLEEP_BEFORE_RECV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i32] [i32 66, i32 97, i32 100, i32 32, i32 67, i32 82, i32 67, i32 47, i32 100, i32 97, i32 116, i32 97, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 66, i32 97, i32 100, i32 32, i32 100, i32 97, i32 116, i32 97, i32 32, i32 115, i32 105, i32 122, i32 101, i32 47, i32 99, i32 116, i32 108, i32 32, i32 99, i32 111, i32 100, i32 101, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 66, i32 97, i32 100, i32 32, i32 104, i32 101, i32 97, i32 100, i32 101, i32 114, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 82, i32 101, i32 97, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 61, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 82, i32 101, i32 97, i32 100, i32 70, i32 105, i32 108, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [10 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_send_receive(i32 %0, i32 %1, i32* %2, i32 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [24 x i32], align 16
  %17 = alloca [256 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %13, align 4
  %21 = bitcast [24 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 96, i1 false)
  %22 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 0
  store i32 3, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 5, %25
  store i32 %26, i32* %24, align 4
  %27 = bitcast [256 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 1024, i1 false)
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 18
  br i1 %29, label %30, label %193

30:                                               ; preds = %6
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @RtlCopyMemory(i32* %34, i32* %35, i32 %36)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %51, %30
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 3, %40
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 4, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 5, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 %62
  store i32 4, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PURGE_TXCLEAR, align 4
  %66 = load i32, i32* @PURGE_RXCLEAR, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @PurgeComm(i32 %64, i32 %67)
  %69 = load i32, i32* @SR98_SLEEP_BEFORE_SEND, align 4
  %70 = call i32 @Sleep(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [24 x i32], [24 x i32]* %16, i64 0, i64 0
  %73 = call i64 @WriteFile(i32 %71, i32* %72, i32 96, i32* %19, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %190

75:                                               ; preds = %54
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %77, 96
  br i1 %78, label %79, label %190

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ClearCommError(i32 %80, i32* null, i32* null)
  %82 = load i32, i32* @SR98_SLEEP_BEFORE_RECV, align 4
  %83 = call i32 @Sleep(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %86 = call i64 @ReadFile(i32 %84, i32* %85, i32 1024, i32* %19, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %187

88:                                               ; preds = %79
  %89 = load i32, i32* %19, align 4
  %90 = icmp sge i32 %89, 6
  br i1 %90, label %91, label %183

91:                                               ; preds = %88
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %180

95:                                               ; preds = %91
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %180

99:                                               ; preds = %95
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp sge i32 %101, 5
  br i1 %102, label %103, label %177

103:                                              ; preds = %99
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, 128
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %177

109:                                              ; preds = %103
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 5
  store i32 %112, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %126, %109
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 3, %115
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = xor i32 %124, %123
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %113

129:                                              ; preds = %113
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 4, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %174

137:                                              ; preds = %129
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 5, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 4
  br i1 %143, label %144, label %174

144:                                              ; preds = %137
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %144
  %149 = load i32**, i32*** %11, align 8
  %150 = icmp ne i32** %149, null
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load i32*, i32** %12, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load i32, i32* %18, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @LPTR, align 4
  %158 = load i32, i32* %18, align 4
  %159 = call i64 @LocalAlloc(i32 %157, i32 %158)
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32**, i32*** %11, align 8
  store i32* %160, i32** %161, align 8
  %162 = icmp ne i32* %160, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %154
  %164 = load i32**, i32*** %11, align 8
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @RtlCopyMemory(i32* %165, i32* %167, i32 %168)
  br label %172

170:                                              ; preds = %154
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %170, %163
  br label %173

173:                                              ; preds = %172, %151, %148, %144
  br label %176

174:                                              ; preds = %137, %129
  %175 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([14 x i32]* @.str to i8*))
  br label %176

176:                                              ; preds = %174, %173
  br label %179

177:                                              ; preds = %103, %99
  %178 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([24 x i32]* @.str.1 to i8*))
  br label %179

179:                                              ; preds = %177, %176
  br label %182

180:                                              ; preds = %95, %91
  %181 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([12 x i32]* @.str.2 to i8*))
  br label %182

182:                                              ; preds = %180, %179
  br label %186

183:                                              ; preds = %88
  %184 = load i32, i32* %19, align 4
  %185 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([16 x i32]* @.str.3 to i8*), i32 %184)
  br label %186

186:                                              ; preds = %183, %182
  br label %189

187:                                              ; preds = %79
  %188 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([9 x i32]* @.str.4 to i8*))
  br label %189

189:                                              ; preds = %187, %186
  br label %192

190:                                              ; preds = %75, %54
  %191 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([10 x i32]* @.str.5 to i8*))
  br label %192

192:                                              ; preds = %190, %189
  br label %193

193:                                              ; preds = %192, %6
  %194 = load i32, i32* %13, align 4
  ret i32 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @PurgeComm(i32, i32) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @WriteFile(i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ClearCommError(i32, i32*, i32*) #2

declare dso_local i64 @ReadFile(i32, i32*, i32, i32*, i32*) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
