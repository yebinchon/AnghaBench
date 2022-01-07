; ModuleID = '/home/carl/AnghaBench/meltdown/extr_memdump.c_main.c'
source_filename = "/home/carl/AnghaBench/meltdown/extr_memdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error converting physical to virtual address\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\1B[32;1m[+]\1B[0m Physical address       : \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\1B[32;1m[+]\1B[0m Physical offset        : \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\1B[32;1m[+]\1B[0m Virtual address       : \1B[33;1m0x%zx\1B[0m\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sigint = common dso_local global i32 0, align 4
@running = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%10zx: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" |\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 1073741824, i64* %6, align 8
  store i64 -1, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strtoull(i8* %23, i32* null, i32 0)
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 3
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strtoull(i8* %32, i32* null, i32 0)
  %34 = ptrtoint i8* %33 to i64
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %29, %26
  store i32 16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %36 = call { i64, i8* } (...) @libkdump_get_autoconfig()
  %37 = bitcast %struct.TYPE_4__* %11 to { i64, i8* }*
  %38 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i8* } %36, 0
  store i64 %39, i64* %38, align 8
  %40 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i8* } %36, 1
  store i8* %41, i8** %40, align 8
  %42 = bitcast %struct.TYPE_4__* %10 to i8*
  %43 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 10, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strtoull(i8* %51, i32* null, i32 0)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %48, %35
  %55 = bitcast %struct.TYPE_4__* %10 to { i64, i8* }*
  %56 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %55, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @libkdump_init(i64 %57, i8* %59)
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @libkdump_phys_to_virt(i64 %61)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %215

68:                                               ; preds = %54
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  %74 = load i64, i64* %12, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %7, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i64, i64* %7, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %68
  store i64 0, i64* %13, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i8* @malloc(i32 %84)
  store i8* %85, i8** %15, align 8
  %86 = load i32, i32* @SIGINT, align 4
  %87 = load i32, i32* @sigint, align 4
  %88 = call i32 @signal(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %208, %142, %83
  %90 = load i64, i64* @running, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ult i64 %93, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %98, label %211

98:                                               ; preds = %96
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %99, %100
  %102 = call i32 @libkdump_read(i64 %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %15, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = urem i64 %106, %108
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  store i8 %104, i8* %110, align 1
  %111 = load i64, i64* %13, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = urem i64 %111, %113
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %208

119:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 0, i32* %17, align 4
  br label %136

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %120

136:                                              ; preds = %131, %120
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %89

145:                                              ; preds = %139, %136
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = sub i64 %148, %151
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %152)
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %167, %145
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load i8*, i8** %15, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %159
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %155

170:                                              ; preds = %155
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %203, %170
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %206

176:                                              ; preds = %172
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp sge i32 %182, 32
  br i1 %183, label %184, label %199

184:                                              ; preds = %176
  %185 = load i8*, i8** %15, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp sle i32 %190, 126
  br i1 %191, label %192, label %199

192:                                              ; preds = %184
  %193 = load i8*, i8** %15, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  br label %200

199:                                              ; preds = %184, %176
  br label %200

200:                                              ; preds = %199, %192
  %201 = phi i32 [ %198, %192 ], [ 46, %199 ]
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %172

206:                                              ; preds = %172
  %207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %98
  %209 = load i64, i64* %13, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %13, align 8
  br label %89

211:                                              ; preds = %96
  %212 = load i8*, i8** %15, align 8
  %213 = call i32 @free(i8* %212)
  %214 = call i32 (...) @libkdump_cleanup()
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %65
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local { i64, i8* } @libkdump_get_autoconfig(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @libkdump_init(i64, i8*) #1

declare dso_local i64 @libkdump_phys_to_virt(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @libkdump_read(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @libkdump_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
