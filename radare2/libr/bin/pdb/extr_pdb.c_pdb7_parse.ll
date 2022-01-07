; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_pdb7_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_pdb7_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@PDB7_SIGNATURE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"page_size\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"alloc_tbl_ptr\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"num_file_pages\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"root_size\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@PDB7_SIGNATURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid signature for PDB7 format.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Error memory allocation.\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Error while reading root_index_pages.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid root index pages size.\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Error: memory allocation of root_page_data.\0A\00", align 1
@R_BUF_SET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Error: memory allocation of root page.\0A\00", align 1
@ePDB_STREAM_ROOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"Could not initialize root stream.\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"PDB root was not initialized.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pdb7_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdb7_parse(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %20 = load i32, i32* @PDB7_SIGNATURE_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %4, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @PDB7_SIGNATURE_LEN, align 4
  %29 = call i32 @r_buf_read(i32 %27, i8* %24, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @PDB7_SIGNATURE_LEN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %203

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @read_int_var(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %14, %struct.TYPE_6__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %203

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = call i32 @read_int_var(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %12, %struct.TYPE_6__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %203

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @read_int_var(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %11, %struct.TYPE_6__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %203

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = call i32 @read_int_var(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %15, %struct.TYPE_6__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %203

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = call i32 @read_int_var(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %16, %struct.TYPE_6__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %203

59:                                               ; preds = %54
  %60 = load i32, i32* @PDB7_SIGNATURE, align 4
  %61 = load i32, i32* @PDB7_SIGNATURE_LEN, align 4
  %62 = call i64 @memcmp(i8* %24, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @eprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %203

66:                                               ; preds = %59
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @count_pages(i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @count_pages(i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @R_MAX(i32 %74, i32 1)
  %76 = call i64 @calloc(i32 4, i32 %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %66
  %81 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %203

82:                                               ; preds = %66
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i32, i32* %6, align 4
  %89 = mul nsw i32 4, %88
  %90 = call i32 @r_buf_read(i32 %85, i8* %87, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 4, %92
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = call i32 @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %203

97:                                               ; preds = %82
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %97
  %104 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %203

105:                                              ; preds = %100
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @calloc(i32 %106, i32 %107)
  %109 = inttoptr i64 %108 to i32*
  %110 = bitcast i32* %109 to i8*
  store i8* %110, i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %105
  %114 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %203

115:                                              ; preds = %105
  %116 = load i8*, i8** %8, align 8
  store i8* %116, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %117

117:                                              ; preds = %144, %115
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* @R_BUF_SET, align 4
  %133 = call i32 @r_buf_seek(i32 %124, i32 %131, i32 %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @r_buf_read(i32 %136, i8* %137, i32 %138)
  %140 = load i8*, i8** %17, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8* %143, i8** %17, align 8
  br label %144

144:                                              ; preds = %121
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %117

147:                                              ; preds = %117
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @calloc(i32 4, i32 %148)
  %150 = inttoptr i64 %149 to i32*
  store i32* %150, i32** %9, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %147
  %154 = call i32 @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %203

155:                                              ; preds = %147
  %156 = load i8*, i8** %8, align 8
  store i8* %156, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %157

157:                                              ; preds = %173, %155
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i8*, i8** %17, align 8
  %163 = bitcast i8* %162 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i8*, i8** %17, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = bitcast i32* %171 to i8*
  store i8* %172, i8** %17, align 8
  br label %173

173:                                              ; preds = %161
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %157

176:                                              ; preds = %157
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32* null, i32** %178, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @ePDB_STREAM_ROOT, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @init_pdb7_root_stream(%struct.TYPE_6__* %179, i32* %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  %188 = call i32 @eprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %203

189:                                              ; preds = %176
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %191 = call i32 @pdb_read_root(%struct.TYPE_6__* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %189
  %194 = call i32 @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %203

195:                                              ; preds = %189
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @R_FREE(i32* %196)
  %198 = load i8*, i8** %8, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = call i32 @R_FREE(i32* %199)
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 @R_FREE(i32* %201)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %211

203:                                              ; preds = %193, %187, %153, %113, %103, %95, %80, %64, %58, %53, %48, %43, %38, %33
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @R_FREE(i32* %204)
  %206 = load i8*, i8** %8, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = call i32 @R_FREE(i32* %207)
  %209 = load i32*, i32** %7, align 8
  %210 = call i32 @R_FREE(i32* %209)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %211

211:                                              ; preds = %203, %195
  %212 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @r_buf_read(i32, i8*, i32) #2

declare dso_local i32 @read_int_var(i8*, i32*, %struct.TYPE_6__*) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i32 @eprintf(i8*) #2

declare dso_local i32 @count_pages(i32, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @R_MAX(i32, i32) #2

declare dso_local i32 @r_buf_seek(i32, i32, i32) #2

declare dso_local i32 @init_pdb7_root_stream(%struct.TYPE_6__*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @pdb_read_root(%struct.TYPE_6__*) #2

declare dso_local i32 @R_FREE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
