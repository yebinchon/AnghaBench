; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_mov_args.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/ebc/extr_ebc_disas.c_decode_mov_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%sr%u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBC_OPCODE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"(%c%u, %c%u)\00", align 1
@EBC_OPERANDS_MAXLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"%s%s, %s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @decode_mov_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mov_args(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 2, i32* %5, align 4
  %14 = bitcast [32 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [32 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 7
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 7
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @TEST_BIT(i32 %28, i32 3)
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %25, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @TEST_BIT(i32 %38, i32 7)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %35, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EBC_OPCODE_MASK, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %233 [
    i32 135, label %50
    i32 128, label %50
    i32 133, label %50
    i32 130, label %50
    i32 136, label %111
    i32 129, label %111
    i32 134, label %111
    i32 132, label %111
    i32 131, label %172
  ]

50:                                               ; preds = %2, %2, %2, %2
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TEST_BIT(i32 %53, i32 7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @decode_index16(i32* %60, %struct.TYPE_7__* %12)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 43, i32 45
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %13, align 1
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %69 = load i8, i8* %13, align 1
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8, i8* %13, align 1
  %74 = sext i8 %73 to i32
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72, i32 %74, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %56, %50
  %81 = load i32*, i32** %3, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @TEST_BIT(i32 %83, i32 6)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %80
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @decode_index16(i32* %90, %struct.TYPE_7__* %12)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 43, i32 45
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %13, align 1
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %99 = load i8, i8* %13, align 1
  %100 = sext i8 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8, i8* %13, align 1
  %104 = sext i8 %103 to i32
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %102, i32 %104, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %86, %80
  br label %233

111:                                              ; preds = %2, %2, %2, %2
  %112 = load i32*, i32** %3, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @TEST_BIT(i32 %114, i32 7)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %111
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @decode_index32(i32* %121, %struct.TYPE_7__* %12)
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 43, i32 45
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %13, align 1
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %130 = load i8, i8* %13, align 1
  %131 = sext i8 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8, i8* %13, align 1
  %135 = sext i8 %134 to i32
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %129, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %133, i32 %135, i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %117, %111
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @TEST_BIT(i32 %144, i32 6)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %141
  %148 = load i32*, i32** %3, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = call i32 @decode_index32(i32* %151, %struct.TYPE_7__* %12)
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 43, i32 45
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %13, align 1
  %159 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %160 = load i8, i8* %13, align 1
  %161 = sext i8 %160 to i32
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8, i8* %13, align 1
  %165 = sext i8 %164 to i32
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %159, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %161, i32 %163, i32 %165, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %147, %141
  br label %233

172:                                              ; preds = %2
  %173 = load i32*, i32** %3, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @TEST_BIT(i32 %175, i32 7)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %172
  %179 = load i32*, i32** %3, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i32 @decode_index64(i32* %182, %struct.TYPE_7__* %12)
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 43, i32 45
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %13, align 1
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %191 = load i8, i8* %13, align 1
  %192 = sext i8 %191 to i32
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i8, i8* %13, align 1
  %196 = sext i8 %195 to i32
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %190, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %192, i32 %194, i32 %196, i32 %198)
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 8
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %178, %172
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @TEST_BIT(i32 %205, i32 6)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %202
  %209 = load i32*, i32** %3, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = call i32 @decode_index64(i32* %212, %struct.TYPE_7__* %12)
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 43, i32 45
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %13, align 1
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %221 = load i8, i8* %13, align 1
  %222 = sext i8 %221 to i32
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i8, i8* %13, align 1
  %226 = sext i8 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %220, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %224, i32 %226, i32 %228)
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 8
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %208, %202
  br label %233

233:                                              ; preds = %2, %232, %171, %110
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @EBC_OPERANDS_MAXLEN, align 4
  %238 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %239 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %240 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %242 = call i32 @CHK_SNPRINTF(i32 %236, i32 %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %238, i8* %239, i8* %240, i8* %241)
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @TEST_BIT(i32, i32) #2

declare dso_local i32 @decode_index16(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @decode_index32(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @decode_index64(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @CHK_SNPRINTF(i32, i32, i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
