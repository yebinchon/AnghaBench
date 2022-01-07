; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_link.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_setattr.c_handle_nfs41_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i32* }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_32__, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i16, i64, i32 }
%struct.TYPE_31__ = type { i32, i32 }

@CP_UTF8 = common dso_local global i32 0, align 4
@NFS41_MAX_PATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"WideCharToMultiByte failed to convert destination filename %S.\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@ERROR_REPARSE = common dso_local global i32 0, align 4
@NFS41_MAX_SYMLINK_DEPTH = common dso_local global i64 0, align 8
@ERROR_TOO_MANY_LINKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"nfs41_symlink_target() for %s failed with %d\0A\00", align 1
@NO_ERROR = common dso_local global i32 0, align 4
@ERROR_FILE_EXISTS = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"nfs41_lookup('%s') failed to find destination directory with %d\0A\00", align 1
@ERROR_NOT_SAME_DEVICE = common dso_local global i32 0, align 4
@OPEN_DELEGATE_WRITE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"nfs41_remove() failed with error %s.\0A\00", align 1
@OPEN_DELEGATE_READ = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"nfs41_link() failed with error %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @handle_nfs41_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_nfs41_link(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_33__, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  %8 = alloca %struct.TYPE_29__, align 8
  %9 = alloca %struct.TYPE_32__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %3, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %4, align 8
  %21 = bitcast %struct.TYPE_33__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  store i64 0, i64* %10, align 8
  %22 = bitcast %struct.TYPE_31__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 8, i1 false)
  %23 = load i32, i32* @CP_UTF8, align 4
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @NFS41_MAX_PATH_LEN, align 4
  %36 = call i64 @WideCharToMultiByte(i32 %23, i32 0, i32 %26, i32 %32, i64 %34, i32 %35, i32* null, i32* null)
  %37 = trunc i64 %36 to i16
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 0
  store i16 %37, i16* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 0
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %48, i32* %12, align 4
  br label %191

49:                                               ; preds = %1
  %50 = call i32 @path_fh_init(%struct.TYPE_29__* %7, %struct.TYPE_33__* %6)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @nfs41_root_session(i32 %56)
  %58 = call i32 @nfs41_lookup(i32 %53, i32* %57, %struct.TYPE_33__* %6, %struct.TYPE_29__* %7, %struct.TYPE_29__* %8, i32* null, i32** %5)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %82, %49
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ERROR_REPARSE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* @NFS41_MAX_SYMLINK_DEPTH, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ERROR_TOO_MANY_LINKS, align 4
  store i32 %69, i32* %12, align 4
  br label %191

70:                                               ; preds = %63
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @nfs41_symlink_target(i32* %71, %struct.TYPE_29__* %7, %struct.TYPE_33__* %6)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 2
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 (i8*, i32, ...) @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %191

82:                                               ; preds = %70
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @nfs41_lookup(i32 %85, i32* %86, %struct.TYPE_33__* %6, %struct.TYPE_29__* %7, %struct.TYPE_29__* %8, i32* null, i32** %5)
  store i32 %87, i32* %12, align 4
  br label %59

88:                                               ; preds = %59
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 0
  %94 = load i16, i16* %93, align 8
  %95 = zext i16 %94 to i64
  %96 = add nsw i64 %92, %95
  %97 = call i32 @last_component(i64 %90, i64 %96, %struct.TYPE_32__* %9)
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %9, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  %103 = call i32 @last_component(i64 %99, i64 %101, %struct.TYPE_32__* %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @NO_ERROR, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %88
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %113, i32* %12, align 4
  br label %191

114:                                              ; preds = %107
  br label %126

115:                                              ; preds = %88
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %6, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %12, align 4
  %124 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123)
  br label %191

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %114
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* @ERROR_NOT_SAME_DEVICE, align 4
  store i32 %137, i32* %12, align 4
  br label %191

138:                                              ; preds = %126
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @NO_ERROR, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* @OPEN_DELEGATE_WRITE, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @nfs41_delegation_return(i32* %143, %struct.TYPE_29__* %8, i32 %144, i32 %145)
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @nfs41_remove(i32* %149, %struct.TYPE_29__* %7, %struct.TYPE_32__* %9, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %142
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @nfs_error_string(i32 %157)
  %159 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @ERROR_FILE_EXISTS, align 4
  store i32 %160, i32* %12, align 4
  br label %191

161:                                              ; preds = %142
  br label %162

162:                                              ; preds = %161, %138
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 0
  %168 = load i32, i32* @OPEN_DELEGATE_READ, align 4
  %169 = load i32, i32* @FALSE, align 4
  %170 = call i32 @nfs41_delegation_return(i32* %165, %struct.TYPE_29__* %167, i32 %168, i32 %169)
  %171 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 0
  %176 = call i32 @nfs41_link(i32* %173, %struct.TYPE_29__* %175, %struct.TYPE_29__* %7, %struct.TYPE_32__* %9, %struct.TYPE_31__* %11)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %162
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @nfs_error_string(i32 %180)
  %182 = call i32 (i32, i8*, i32, ...) @dprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %185 = call i32 @nfs_to_windows_error(i32 %183, i32 %184)
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %179, %162
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %186, %156, %136, %119, %112, %75, %68, %43
  %192 = load i32, i32* %12, align 4
  ret i32 %192
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i64, i32, i32*, i32*) #2

declare dso_local i32 @eprintf(i8*, i32, ...) #2

declare dso_local i32 @path_fh_init(%struct.TYPE_29__*, %struct.TYPE_33__*) #2

declare dso_local i32 @nfs41_lookup(i32, i32*, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32**) #2

declare dso_local i32* @nfs41_root_session(i32) #2

declare dso_local i32 @nfs41_symlink_target(i32*, %struct.TYPE_29__*, %struct.TYPE_33__*) #2

declare dso_local i32 @last_component(i64, i64, %struct.TYPE_32__*) #2

declare dso_local i32 @dprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @nfs41_delegation_return(i32*, %struct.TYPE_29__*, i32, i32) #2

declare dso_local i32 @nfs41_remove(i32*, %struct.TYPE_29__*, %struct.TYPE_32__*, i32) #2

declare dso_local i32 @nfs_error_string(i32) #2

declare dso_local i32 @nfs41_link(i32*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_32__*, %struct.TYPE_31__*) #2

declare dso_local i32 @nfs_to_windows_error(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
