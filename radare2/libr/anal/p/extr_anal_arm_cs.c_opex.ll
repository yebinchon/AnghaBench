; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_opex.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_opex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\22operands\22:[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\22type\22:\22reg\22\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c",\22value\22:\22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"\22type\22:\22imm\22\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c",\22value\22:%d\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\22type\22:\22mem\22\00", align 1
@ARM_REG_INVALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c",\22base\22:\22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c",\22index\22:\22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c",\22scale\22:%d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c",\22disp\22:%d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\22type\22:\22fp\22\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c",\22value\22:%lf\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\22type\22:\22cimm\22\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\22type\22:\22pimm\22\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\22type\22:\22setend\22\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c",\22value\22:\22be\22\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c",\22value\22:\22le\22\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c",\22value\22:\22invalid\22\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"\22type\22:\22sysreg\22\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c",\22type\22:\22invalid\22\00", align 1
@ARM_SFT_INVALID = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c",\22shift\22:{\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"\22type\22:\22%s\22\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c",\22value\22:\22%u\22\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c",\22value\22:\22%d\22\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c",\22vector_index\22:\22%d\22\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c",\22subtracted\22:true\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c",\22usermode\22:true\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c",\22update_flags\22:true\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c",\22writeback\22:true\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c",\22vector_size\22:%d\00", align 1
@ARM_VECTORDATA_INVALID = common dso_local global i64 0, align 8
@.str.34 = private unnamed_addr constant [20 x i8] c",\22vector_data\22:\22%s\22\00", align 1
@ARM_CPSMODE_INVALID = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [15 x i8] c",\22cps_mode\22:%d\00", align 1
@ARM_CPSFLAG_INVALID = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [15 x i8] c",\22cps_flag\22:%d\00", align 1
@ARM_CC_INVALID = common dso_local global i64 0, align 8
@ARM_CC_AL = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c",\22cc\22:\22%s\22\00", align 1
@ARM_MB_INVALID = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [18 x i8] c",\22mem_barrier\22:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_11__*)* @opex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opex(i32* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @r_strbuf_init(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @r_strbuf_append(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @r_strbuf_append(i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %232, %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %235

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 10
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @r_strbuf_append(i32* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @r_strbuf_append(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %159 [
    i32 142, label %44
    i32 145, label %54
    i32 144, label %62
    i32 146, label %109
    i32 147, label %117
    i32 143, label %125
    i32 141, label %133
    i32 140, label %149
  ]

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @r_strbuf_append(i32* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cs_reg_name(i32 %48, i32 %51)
  %53 = call i32 @r_strbuf_appendf(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  br label %162

54:                                               ; preds = %38
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @r_strbuf_append(i32* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @r_strbuf_appendf(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %60)
  br label %162

62:                                               ; preds = %38
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @r_strbuf_append(i32* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ARM_REG_INVALID, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @cs_reg_name(i32 %73, i32 %77)
  %79 = call i32 @r_strbuf_appendf(i32* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ARM_REG_INVALID, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cs_reg_name(i32 %89, i32 %93)
  %95 = call i32 @r_strbuf_appendf(i32* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %87, %80
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @r_strbuf_appendf(i32* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @r_strbuf_appendf(i32* %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  br label %162

109:                                              ; preds = %38
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @r_strbuf_append(i32* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @r_strbuf_appendf(i32* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %115)
  br label %162

117:                                              ; preds = %38
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @r_strbuf_append(i32* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @r_strbuf_appendf(i32* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %162

125:                                              ; preds = %38
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @r_strbuf_append(i32* %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @r_strbuf_appendf(i32* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  br label %162

133:                                              ; preds = %38
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @r_strbuf_append(i32* %134, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  switch i32 %138, label %145 [
    i32 139, label %139
    i32 138, label %142
  ]

139:                                              ; preds = %133
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @r_strbuf_append(i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %148

142:                                              ; preds = %133
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @r_strbuf_append(i32* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %148

145:                                              ; preds = %133
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @r_strbuf_append(i32* %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %142, %139
  br label %162

149:                                              ; preds = %38
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @r_strbuf_append(i32* %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @cs_reg_name(i32 %153, i32 %156)
  %158 = call i32 @r_strbuf_appendf(i32* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  br label %162

159:                                              ; preds = %38
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @r_strbuf_append(i32* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %149, %148, %125, %117, %109, %96, %54, %44
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ARM_SFT_INVALID, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %210

169:                                              ; preds = %162
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @r_strbuf_append(i32* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %206 [
    i32 137, label %176
    i32 135, label %176
    i32 133, label %176
    i32 131, label %176
    i32 129, label %176
    i32 136, label %190
    i32 134, label %190
    i32 132, label %190
    i32 130, label %190
    i32 128, label %190
  ]

176:                                              ; preds = %169, %169, %169, %169, %169
  %177 = load i32*, i32** %4, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @shift_type_name(i32 %181)
  %183 = call i32 @r_strbuf_appendf(i32* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %182)
  %184 = load i32*, i32** %4, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @r_strbuf_appendf(i32* %184, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %188)
  br label %207

190:                                              ; preds = %169, %169, %169, %169, %169
  %191 = load i32*, i32** %4, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @shift_type_name(i32 %195)
  %197 = call i32 @r_strbuf_appendf(i32* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %4, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @cs_reg_name(i32 %199, i32 %203)
  %205 = call i32 @r_strbuf_appendf(i32* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %204)
  br label %207

206:                                              ; preds = %169
  br label %207

207:                                              ; preds = %206, %190, %176
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @r_strbuf_append(i32* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %162
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %221

215:                                              ; preds = %210
  %216 = load i32*, i32** %4, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @r_strbuf_appendf(i32* %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %219)
  br label %221

221:                                              ; preds = %215, %210
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32*, i32** %4, align 8
  %228 = call i32 @r_strbuf_append(i32* %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %221
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @r_strbuf_append(i32* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %20

235:                                              ; preds = %20
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @r_strbuf_append(i32* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 9
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i32*, i32** %4, align 8
  %244 = call i32 @r_strbuf_append(i32* %243, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %235
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32*, i32** %4, align 8
  %252 = call i32 @r_strbuf_append(i32* %251, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %245
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 7
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @r_strbuf_append(i32* %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  br label %261

261:                                              ; preds = %258, %253
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load i32*, i32** %4, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @r_strbuf_appendf(i32* %267, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %270)
  br label %272

272:                                              ; preds = %266, %261
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @ARM_VECTORDATA_INVALID, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %285

278:                                              ; preds = %272
  %279 = load i32*, i32** %4, align 8
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @vector_data_type_name(i64 %282)
  %284 = call i32 @r_strbuf_appendf(i32* %279, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i32 %283)
  br label %285

285:                                              ; preds = %278, %272
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ARM_CPSMODE_INVALID, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load i32*, i32** %4, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @r_strbuf_appendf(i32* %292, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %291, %285
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ARM_CPSFLAG_INVALID, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %297
  %304 = load i32*, i32** %4, align 8
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @r_strbuf_appendf(i32* %304, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %303, %297
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @ARM_CC_INVALID, align 8
  %314 = icmp ne i64 %312, %313
  br i1 %314, label %315, label %328

315:                                              ; preds = %309
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 5
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @ARM_CC_AL, align 8
  %320 = icmp ne i64 %318, %319
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load i32*, i32** %4, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @cc_name(i64 %325)
  %327 = call i32 @r_strbuf_appendf(i32* %322, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i32 %326)
  br label %328

328:                                              ; preds = %321, %315, %309
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @ARM_MB_INVALID, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load i32*, i32** %4, align 8
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = sub nsw i32 %338, 1
  %340 = call i32 @r_strbuf_appendf(i32* %335, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i32 %339)
  br label %341

341:                                              ; preds = %334, %328
  %342 = load i32*, i32** %4, align 8
  %343 = call i32 @r_strbuf_append(i32* %342, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  ret void
}

declare dso_local i32 @r_strbuf_init(i32*) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*, i32) #1

declare dso_local i32 @cs_reg_name(i32, i32) #1

declare dso_local i32 @shift_type_name(i32) #1

declare dso_local i32 @vector_data_type_name(i64) #1

declare dso_local i32 @cc_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
