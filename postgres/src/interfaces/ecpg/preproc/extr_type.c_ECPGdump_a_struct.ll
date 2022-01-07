; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_struct.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ECPGstruct_member* }
%struct.ECPGstruct_member = type { %struct.ECPGstruct_member*, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s%s.\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s->\00", align 1
@ecpg_no_indicator = common dso_local global %struct.ECPGtype zeroinitializer, align 8
@struct_no_indicator = common dso_local global %struct.ECPGstruct_member zeroinitializer, align 8
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"indicator struct \22%s\22 has too few members\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"indicator struct \22%s\22 has too many members\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, %struct.ECPGtype*, %struct.ECPGtype*, i8*, i8*)* @ECPGdump_a_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ECPGdump_a_struct(i32* %0, i8* %1, i8* %2, i8* %3, %struct.ECPGtype* %4, %struct.ECPGtype* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ECPGtype*, align 8
  %14 = alloca %struct.ECPGtype*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ECPGstruct_member*, align 8
  %18 = alloca %struct.ECPGstruct_member*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.ECPGtype* %4, %struct.ECPGtype** %13, align 8
  store %struct.ECPGtype* %5, %struct.ECPGtype** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store %struct.ECPGstruct_member* null, %struct.ECPGstruct_member** %18, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = load i8*, i8** %15, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %29

26:                                               ; preds = %8
  %27 = load i8*, i8** %15, align 8
  %28 = call i64 @strlen(i8* %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i64 [ 0, %25 ], [ %28, %26 ]
  %31 = add nsw i64 %22, %30
  %32 = add nsw i64 %31, 3
  %33 = call i64 @mm_alloc(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %19, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load i8*, i8** %16, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %43

40:                                               ; preds = %29
  %41 = load i8*, i8** %16, align 8
  %42 = call i64 @strlen(i8* %41)
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i64 [ 0, %39 ], [ %42, %40 ]
  %45 = add nsw i64 %36, %44
  %46 = add nsw i64 %45, 3
  %47 = call i64 @mm_alloc(i64 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %20, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @atoi(i8* %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load i8*, i8** %19, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** %15, align 8
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %58 ]
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %61)
  br label %74

63:                                               ; preds = %43
  %64 = load i8*, i8** %19, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  br label %70

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %69 ]
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %59
  %75 = load i8*, i8** %19, align 8
  store i8* %75, i8** %15, align 8
  %76 = load %struct.ECPGtype*, %struct.ECPGtype** %14, align 8
  %77 = icmp eq %struct.ECPGtype* %76, @ecpg_no_indicator
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store %struct.ECPGstruct_member* @struct_no_indicator, %struct.ECPGstruct_member** %18, align 8
  br label %115

79:                                               ; preds = %74
  %80 = load %struct.ECPGtype*, %struct.ECPGtype** %14, align 8
  %81 = icmp ne %struct.ECPGtype* %80, null
  br i1 %81, label %82, label %114

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @atoi(i8* %83)
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i8*, i8** %20, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i8*, i8** %16, align 8
  br label %93

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i8* [ %91, %90 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %92 ]
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %95)
  br label %108

97:                                               ; preds = %82
  %98 = load i8*, i8** %20, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i8*, i8** %16, align 8
  br label %104

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %103 ]
  %106 = load i8*, i8** %11, align 8
  %107 = call i32 @sprintf(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %105, i8* %106)
  br label %108

108:                                              ; preds = %104, %93
  %109 = load i8*, i8** %20, align 8
  store i8* %109, i8** %16, align 8
  %110 = load %struct.ECPGtype*, %struct.ECPGtype** %14, align 8
  %111 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %112, align 8
  store %struct.ECPGstruct_member* %113, %struct.ECPGstruct_member** %18, align 8
  br label %114

114:                                              ; preds = %108, %79
  br label %115

115:                                              ; preds = %114, %78
  %116 = load %struct.ECPGtype*, %struct.ECPGtype** %13, align 8
  %117 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %118, align 8
  store %struct.ECPGstruct_member* %119, %struct.ECPGstruct_member** %17, align 8
  br label %120

120:                                              ; preds = %188, %115
  %121 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %122 = icmp ne %struct.ECPGstruct_member* %121, null
  br i1 %122, label %123, label %192

123:                                              ; preds = %120
  %124 = load i32*, i32** %9, align 8
  %125 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %126 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %129 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %132 = icmp ne %struct.ECPGstruct_member* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %135 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  br label %138

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i32* [ %136, %133 ], [ null, %137 ]
  %140 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %141 = icmp ne %struct.ECPGstruct_member* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %144 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  br label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %142
  %148 = phi i32* [ %145, %142 ], [ null, %146 ]
  %149 = load i8*, i8** %15, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.ECPGtype*, %struct.ECPGtype** %13, align 8
  %153 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %156 = icmp ne %struct.ECPGstruct_member* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = load %struct.ECPGtype*, %struct.ECPGtype** %14, align 8
  %159 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  br label %162

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32* [ %160, %157 ], [ null, %161 ]
  %164 = call i32 @ECPGdump_a_type(i32* %124, i32* %127, i32* %130, i32 -1, i32* %139, i32* %148, i32 -1, i8* %149, i8* %150, i8* %151, i32* %154, i32* %163)
  %165 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %166 = icmp ne %struct.ECPGstruct_member* %165, null
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %169 = icmp ne %struct.ECPGstruct_member* %168, @struct_no_indicator
  br i1 %169, label %170, label %187

170:                                              ; preds = %167
  %171 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %172 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %171, i32 0, i32 0
  %173 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %172, align 8
  store %struct.ECPGstruct_member* %173, %struct.ECPGstruct_member** %18, align 8
  %174 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %175 = icmp eq %struct.ECPGstruct_member* %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %178 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %177, i32 0, i32 0
  %179 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %178, align 8
  %180 = icmp ne %struct.ECPGstruct_member* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i32, i32* @PARSE_ERROR, align 4
  %183 = load i32, i32* @ET_WARNING, align 4
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @mmerror(i32 %182, i32 %183, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %184)
  store %struct.ECPGstruct_member* @struct_no_indicator, %struct.ECPGstruct_member** %18, align 8
  br label %186

186:                                              ; preds = %181, %176, %170
  br label %187

187:                                              ; preds = %186, %167, %162
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %17, align 8
  %190 = getelementptr inbounds %struct.ECPGstruct_member, %struct.ECPGstruct_member* %189, i32 0, i32 0
  %191 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %190, align 8
  store %struct.ECPGstruct_member* %191, %struct.ECPGstruct_member** %17, align 8
  br label %120

192:                                              ; preds = %120
  %193 = load %struct.ECPGtype*, %struct.ECPGtype** %14, align 8
  %194 = icmp ne %struct.ECPGtype* %193, null
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %197 = icmp ne %struct.ECPGstruct_member* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load %struct.ECPGstruct_member*, %struct.ECPGstruct_member** %18, align 8
  %200 = icmp ne %struct.ECPGstruct_member* %199, @struct_no_indicator
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load i32, i32* @PARSE_ERROR, align 4
  %203 = load i32, i32* @ET_WARNING, align 4
  %204 = load i8*, i8** %11, align 8
  %205 = call i32 @mmerror(i32 %202, i32 %203, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %201, %198, %195, %192
  %207 = load i8*, i8** %19, align 8
  %208 = call i32 @free(i8* %207)
  %209 = load i8*, i8** %20, align 8
  %210 = call i32 @free(i8* %209)
  ret void
}

declare dso_local i64 @mm_alloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ECPGdump_a_type(i32*, i32*, i32*, i32, i32*, i32*, i32, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @mmerror(i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
