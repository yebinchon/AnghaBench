; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag.c_main.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_imagetag.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Broadcom 63xx image tagger - v2.0.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Copyright (C) 2008 Axel Gembe\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Copyright (C) 2009-2010 Daniel Dickinson\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Licensed under the terms of the Gnu General Public License\0A\00", align 1
@TAGVER_LEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Error: Tag Version (tag_version,v) too long.\0A\00", align 1
@BOARDID_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Error: Board ID (boardid,b) too long.\0A\00", align 1
@CHIPID_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"Error: Chip ID (chipid,c) too long.\0A\00", align 1
@SIG1_LEN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [45 x i8] c"Error: Magic string (signature,a) too long.\0A\00", align 1
@SIG2_LEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [53 x i8] c"Error: Second magic string (signature2,m) too long.\0A\00", align 1
@FLASHLAYOUTVER_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"Error: Flash layout version (layoutver,y) too long.\0A\00", align 1
@RSASIG_LEN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"Error: RSA Signature (rsa_signature,r) too long.\0A\00", align 1
@TAGINFO1_LEN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"Error: Vendor Information 1 (info1) too long.\0A\00", align 1
@TAGINFO2_LEN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"Error: Vendor Information 2 (info2) too long.\0A\00", align 1
@ALTTAGINFO_LEN = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [35 x i8] c"Error: pad size must be positive.\0D\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Error: Invalid value for load address\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Error: Invalid value for entry\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.gengetopt_args_info, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i64 @imagetag_cmdline(i32 %17, i8** %18, %struct.gengetopt_args_info* %16)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %2
  %24 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %8, align 8
  %30 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 25
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strlen(i32 %35)
  %37 = load i64, i64* @TAGVER_LEN, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %23
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 24
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strlen(i32 %45)
  %47 = load i64, i64* @BOARDID_LEN, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 23
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strlen(i32 %55)
  %57 = load i64, i64* @CHIPID_LEN, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 22
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strlen(i32 %65)
  %67 = load i64, i64* @SIG1_LEN, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 21
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @strlen(i32 %75)
  %77 = load i64, i64* @SIG2_LEN, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %82 = call i32 @exit(i32 1) #3
  unreachable

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 20
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 19
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @strlen(i32 %89)
  %91 = load i64, i64* @FLASHLAYOUTVER_LEN, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 18
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 17
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @strlen(i32 %104)
  %106 = load i64, i64* @RSASIG_LEN, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %111 = call i32 @exit(i32 1) #3
  unreachable

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %98
  %114 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 16
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 15
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @strlen(i32 %119)
  %121 = load i64, i64* @TAGINFO1_LEN, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 @fprintf(i32 %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %126 = call i32 @exit(i32 1) #3
  unreachable

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %113
  %129 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 14
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 13
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @strlen(i32 %134)
  %136 = load i64, i64* @TAGINFO2_LEN, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %141 = call i32 @exit(i32 1) #3
  unreachable

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %128
  %144 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 12
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 11
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @strlen(i32 %149)
  %151 = load i64, i64* @ALTTAGINFO_LEN, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32, i32* @stderr, align 4
  %155 = call i32 @fprintf(i32 %154, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %156 = call i32 @exit(i32 1) #3
  unreachable

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %143
  %159 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 10
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %169 = call i32 @exit(i32 1) #3
  unreachable

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %158
  %172 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @strtoul(i32 %173, i32* null, i32 16)
  store i64 %174, i64* %11, align 8
  %175 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @strtoul(i32 %176, i32* null, i32 16)
  store i64 %177, i64* %12, align 8
  %178 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 7
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @strtoul(i32 %179, i32* null, i32 16)
  store i64 %180, i64* %13, align 8
  %181 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %203, label %184

184:                                              ; preds = %171
  %185 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @strtoul(i32 %186, i32* null, i32 16)
  store i64 %187, i64* %14, align 8
  %188 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @strtoul(i32 %189, i32* null, i32 16)
  store i64 %190, i64* %15, align 8
  %191 = load i64, i64* %14, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %184
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 @fprintf(i32 %194, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %184
  %197 = load i64, i64* %15, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @stderr, align 4
  %201 = call i32 @fprintf(i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202, %171
  %204 = load i8*, i8** %8, align 8
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %14, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @tagfile(i8* %204, i8* %205, i8* %206, %struct.gengetopt_args_info* %16, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  ret i32 %212
}

declare dso_local i64 @imagetag_cmdline(i32, i8**, %struct.gengetopt_args_info*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @strtoul(i32, i32*, i32) #1

declare dso_local i32 @tagfile(i8*, i8*, i8*, %struct.gengetopt_args_info*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
