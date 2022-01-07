; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arcompact_genops_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arc.c_arcompact_genops_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@R_ANAL_OP_TYPE_UJMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CJMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_UCJMP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_UCALL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CCALL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_UCCALL = common dso_local global i32 0, align 4
@ARC_REG_LIMM = common dso_local global i32 0, align 4
@ARC_REG_ILINK1 = common dso_local global i32 0, align 4
@ARC_REG_ILINK2 = common dso_local global i32 0, align 4
@ARC_REG_BLINK = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_RET = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32)* @arcompact_genops_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcompact_genops_jmp(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 129, label %18
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @R_ANAL_OP_TYPE_UJMP, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @R_ANAL_OP_TYPE_CJMP, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @R_ANAL_OP_TYPE_UCJMP, align 4
  store i32 %17, i32* %12, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load i32, i32* @R_ANAL_OP_TYPE_UCALL, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @R_ANAL_OP_TYPE_CCALL, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @R_ANAL_OP_TYPE_UCCALL, align 4
  store i32 %21, i32* %12, align 4
  br label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %239

23:                                               ; preds = %18, %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 31
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %238 [
    i32 0, label %33
    i32 1, label %92
    i32 2, label %108
    i32 3, label %140
  ]

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ARC_REG_LIMM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @arcompact_jump(%struct.TYPE_8__* %43, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %239

55:                                               ; preds = %33
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ARC_REG_ILINK1, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ARC_REG_ILINK2, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ARC_REG_BLINK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67, %61, %55
  %74 = load i32, i32* @R_ANAL_OP_TYPE_RET, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %5, align 4
  br label %239

85:                                               ; preds = %67
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %239

92:                                               ; preds = %23
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @arcompact_jump(%struct.TYPE_8__* %96, i32 %97, i32 %100, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  br label %239

108:                                              ; preds = %23
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 6
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SEX_S12(i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @arcompact_jump(%struct.TYPE_8__* %128, i32 %129, i32 %132, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %5, align 4
  br label %239

140:                                              ; preds = %23
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %219

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @ARC_REG_LIMM, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %170

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @arcompact_jump_cond(%struct.TYPE_8__* %155, i32 %156, i32 %159, i32 %162, i32 %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %5, align 4
  br label %239

170:                                              ; preds = %145
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ARC_REG_ILINK1, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %188, label %176

176:                                              ; preds = %170
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ARC_REG_ILINK2, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ARC_REG_BLINK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %182, %176, %170
  %189 = load i32, i32* @R_ANAL_OP_TYPE_CRET, align 4
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @map_cond2radare(i32 %194)
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %5, align 4
  br label %239

206:                                              ; preds = %182
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @map_cond2radare(i32 %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %5, align 4
  br label %239

219:                                              ; preds = %140
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @arcompact_jump_cond(%struct.TYPE_8__* %223, i32 %224, i32 %227, i32 %230, i32 %233)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %5, align 4
  br label %239

238:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %238, %219, %206, %188, %151, %108, %92, %85, %73, %39, %22
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @arcompact_jump(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @SEX_S12(i32) #1

declare dso_local i32 @arcompact_jump_cond(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i8* @map_cond2radare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
