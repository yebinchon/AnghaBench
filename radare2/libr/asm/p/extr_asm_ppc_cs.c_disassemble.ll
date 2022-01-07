; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_ppc_cs.c_disassemble.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_ppc_cs.c_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64*, i32 }

@disassemble.omode = internal global i32 -1, align 4
@disassemble.obits = internal global i32 -1, align 4
@CS_MODE_64 = common dso_local global i32 0, align 4
@CS_MODE_32 = common dso_local global i32 0, align 4
@CS_MODE_BIG_ENDIAN = common dso_local global i32 0, align 4
@CS_MODE_LITTLE_ENDIAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vle\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@handle = common dso_local global i64 0, align 8
@CS_ARCH_PPC = common dso_local global i32 0, align 4
@CS_ERR_OK = common dso_local global i32 0, align 4
@CS_OPT_DETAIL = common dso_local global i32 0, align 4
@CS_OPT_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32)* @disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disassemble(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @CS_MODE_64, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @CS_MODE_32, align 4
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i32 [ %24, %23 ], [ %34, %33 ]
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @CS_MODE_BIG_ENDIAN, align 4
  br label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @CS_MODE_LITTLE_ENDIAN, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %45
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @strncmp(i64 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %194

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @decompile_vle(%struct.TYPE_15__* %66, %struct.TYPE_14__* %67, i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %194

77:                                               ; preds = %65
  br label %109

78:                                               ; preds = %53, %45
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @strncmp(i64 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %194

95:                                               ; preds = %89
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @decompile_ps(%struct.TYPE_15__* %96, %struct.TYPE_14__* %97, i32* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %5, align 4
  br label %194

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %83, %78
  br label %109

109:                                              ; preds = %108, %77
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @disassemble.omode, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @disassemble.obits, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113, %109
  %120 = call i32 @cs_close(i64* @handle)
  store i64 0, i64* @handle, align 8
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* @disassemble.omode, align 4
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* @disassemble.obits, align 4
  br label %125

125:                                              ; preds = %119, %113
  %126 = load i64, i64* @handle, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i32, i32* @CS_ARCH_PPC, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @cs_open(i32 %129, i32 %130, i64* @handle)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @CS_ERR_OK, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 -1, i32* %5, align 4
  br label %194

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %125
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i32 4, i32* %139, align 4
  %140 = load i64, i64* @handle, align 8
  %141 = load i32, i32* @CS_OPT_DETAIL, align 4
  %142 = load i32, i32* @CS_OPT_OFF, align 4
  %143 = call i32 @cs_option(i64 %140, i32 %141, i32 %142)
  %144 = load i64, i64* @handle, align 8
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @cs_disasm(i64 %144, i32* %145, i32 %146, i32 %147, i32 1, %struct.TYPE_13__** %13)
  store i32 %148, i32* %10, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32 4, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %183

153:                                              ; preds = %137
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %153
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = call i8* @sdb_fmt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %169, i64* %172)
  store i8* %173, i8** %15, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = call i32 @r_asm_op_set_asm(%struct.TYPE_14__* %174, i8* %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @cs_free(%struct.TYPE_13__* %177, i32 %178)
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %5, align 4
  br label %194

183:                                              ; preds = %153, %137
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %185 = call i32 @r_asm_op_set_asm(%struct.TYPE_14__* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  store i32 4, i32* %187, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @cs_free(%struct.TYPE_13__* %188, i32 %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %183, %158, %135, %103, %94, %73, %64
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @decompile_vle(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @decompile_ps(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @cs_close(i64*) #1

declare dso_local i32 @cs_open(i32, i32, i64*) #1

declare dso_local i32 @cs_option(i64, i32, i32) #1

declare dso_local i32 @cs_disasm(i64, i32*, i32, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i8* @sdb_fmt(i8*, i32, i8*, i64*) #1

declare dso_local i32 @r_asm_op_set_asm(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @cs_free(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
